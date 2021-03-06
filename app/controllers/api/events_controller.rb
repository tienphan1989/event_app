class Api::EventsController < ApplicationController
    # GET /events/:id
    def show
        event = Event.find(params[:id])

        render json: event.to_json(
            except: [:created_at, :updated_at]
        )
    end

    # GET /events
    def index
        @events = Event.all
        render json: @events
    end

    # POST /events
    def create
        event = Event.create(title: params[:title], date: params[:date], city: params[:city])
        render json: event.to_json(
            :only => [:id, :title, :date, :city]
        )
    end

    # DELETE /events/:id
    def destroy
        
    end
end
