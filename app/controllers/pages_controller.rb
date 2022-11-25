class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @users = User.where(is_market: true)
    @products = Product.where(status: true)
    @reviews = [
      "J'aime vraiment les produits, de saison et frais ! Et quel plaisir de recontrer des gens du coin.",
      "Je peux manger des légumes de qualité à des prix défiant toute concurrence. Et en circuit court.",
      "Avant, je devait jetter une grosse partie de mes prunes, mais avec Cueillette, je peux revendre le surplus."
    ]
    # The `geocoded` scope filters only flats with coordinates
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window: render_to_string(partial: "info_window", locals: {user: user})
      }
    end
  end
end
