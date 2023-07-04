class BandsController < ApplicationController

    def top
    end
    
    def band_info
        @bands = Band.all
    end

    def live_info
        if params[:word]
            @w_params = params[:word]
            @livelist = []
            params[:word].each do |key,value|
              if value == "1"
                band_fes = Band.where(name: key)
                # find&find_byはレコードとってくる
                # whereは配列で取ってくる
                fes_list = []
                band_fes.each do |b|
                  fes_list.concat(b.festivals)
                end
                @livelist = @livelist.empty? ? fes_list : @livelist & fes_list
              end
            end
          end
    end

    def new
        @band = Band.new
    end

    def create
        band = Band.new(band_params)
        band.user_id = current_user.id
        if band.save
            redirect_to :action => "index"
        else 
            redirect_to :action => "new"
        end
    end

    private
    def band_params
        params.require(:band).permit(:name, :image, festival_ids: [])
    end
end
