class GossipsController < ApplicationController

  def index
    @gossip = Gossip.find(params[:gossip_id])
  end

  def show
      # Méthode qui récupère le potin concerné et l'envoie à la view show (show.html.erb) pour affichage
     @gossip = Gossip.find(params[:id])
  end

  def new
      # Méthode qui crée un potin vide et l'envoie à une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
      @gossip = Gossip.new

  end

  def create
      # Méthode qui créé un potin à partir du contenu du formulaire de new.html.erb, soumis par l'utilisateur
      # pour info, le contenu de ce formulaire sera accessible dans le hash params (ton meilleur pote)
      # Une fois la création faite, on redirige généralement vers la méthode show (pour afficher le potin créé)
       @gossip = Gossip.new(title: params[:title], content: params[:content]) # avec xxx qui sont les données obtenues à partir du formulaire
       @gossip.user = User.find_by(id: session[:user_id])
      if @gossip.save # essaie de sauvegarder en base @gossip
        # si ça marche, il redirige vers la page d'index du site
        redirect_to accueil_index_path
      else
        # sinon, il render la view new (qui est celle sur laquelle on est déjà)
        render :new
      end
  end

  def edit
      # Méthode qui récupère le potin concerné et l'envoie à la view edit (edit.html.erb) pour affichage dans un formulaire d'édition
      @gossip = Gossip.find(params[:id ])
  end

  def update
      # Méthode qui met à jour le potin à partir du contenu du formulaire de edit.html.erb, soumis par l'utilisateur
      # pour info, le contenu de ce formulaire sera accessible dans le hash params
      # Une fois la modification faite, on redirige généralement vers la méthode show (pour afficher le potin modifié)
      @gossip = Gossip.find(params[:id])
  if @gossip.update(title: params[:title], content: params[:content], user_id: 11)
    
    redirect_to gossip_path
  else
    render :edit
  end
  end

  def destroy
      # Méthode qui récupère le potin concerné et le détruit en base
      # Une fois la suppression faite, on redirige généralement vers la méthode index (pour afficher la liste à jour)
       @gossip = Gossip.find(params[:id])
       
        if @gossip.comments != nil
          @gossip.comments.each do |s|
        s.destroy
      end
      end
  if @gossip.destroy

    redirect_to accueil_index_path
  else
    render :show
  end

  end
end
