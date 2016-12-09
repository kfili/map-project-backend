class PlacesController < OpenReadController
    before_action :set_place, only: [:update, :destroy]

    # GET /places
    # GET /places.json
    def index
        @places = Place.all # .find(id=users_id)

        render json: @places
    end

    # GET /places/1
    # GET /places/1.json
    def show
        render json: Place.find(params[:id])
    end

    # POST /places
    # POST /places.json
    def create
        @place = current_user.places.build(place_params)

        if @place.save
            render json: @place, status: :created
        else
            render json: @place.errors, status: :unprocessable_entity
        end
    end

    # PATCH/PUT /places/1
    # PATCH/PUT /places/1.json
    def update
        if @place.update(place_params)
            head :no_content
        else
            render json: @place.errors, status: :unprocessable_entity
        end
    end

    # DELETE /places/1
    # DELETE /places/1.json
    def destroy
        @place.destroy

        head :no_content
    end

    private

    def set_place
        @place = current_user.places.find(params[:id])
    end

    def place_params
        params.require(:place)
              .permit(:name, :place_type, :location, :address, :phone, :rating)
    end

    private :set_place, :place_params
end
