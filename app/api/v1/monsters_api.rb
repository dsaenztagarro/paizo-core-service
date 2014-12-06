module API
  module V1
    # API methods for monsters
    class Monsters < Grape::API
      resource :monsters do
        get '/' do
          @monsters = Monster.all
        end

        params do
          requires :monster_id, type: Integer, desc: 'Monster id'
        end
        get ':monster_id' do
          @monster = Monster.find(params[:monster_id])
        end
      end
    end
  end
end
