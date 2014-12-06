module API
  module V1
    # API methods for bestiaries
    class Bestiaries < Grape::API
      resource :bestiaries do
        get '/' do
          @bestiaries = Bestiary.all
        end

        params do
          requires :bestiary_id, type: Integer, desc: 'Bestiary id'
        end
        get ':bestiary_id' do
          @bestiary = Bestiary.find(params[:bestiary_id])
        end
      end
    end
  end
end
