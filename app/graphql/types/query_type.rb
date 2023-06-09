module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :items, [Types::ItemType], null: false, description: "Return a list of items"
    field :artists, [Types::ArtistType], null: false, description: "Return a list of artists"

    def items
      Item.all
    end
  end
end
