class GossipsController < ApplicationController
    def index
        @gossips = Gossip.all
        # Méthode qui récupère tous les potins et les envoie à la view index (index.html.erb) pour affichage
    end
    
    def show
        @gossips = Gossip.find(params[:id])
        # Méthode qui récupère le potin concerné et l'envoie à la view show (show.html.erb) pour affichage
    end
    
    def new
        @create = Gossip.new
        # Méthode qui crée un potin vide et l'envoie à une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
    end
    
    def create
        @create = Gossip.new(content: (params[:content]), title: (params[:title]), user: User.all.sample )
        # Méthode qui créé un potin à partir du contenu du formulaire de new.html.erb, soumis par l'utilisateur
        # pour info, le contenu de ce formulaire sera accessible dans le hash params (ton meilleur pote)
        if @create.save # essaie de sauvegarder en base @gossip
            redirect_to gossips_path
            # si ça marche, il redirige vers la page d'index du site
        else
            render "new"
            # sinon, il render la view new (qui est celle sur laquelle on est déjà)
        end
        # Une fois la création faite, on redirige généralement vers la méthode show (pour afficher le potin créé)
    end
    
    def edit
        @gossips = Gossip.find(params[:id])
        # Méthode qui récupère le potin concerné et l'envoie à la view edit (edit.html.erb) pour affichage dans un formulaire d'édition
    end
    
    def update
        @gossips = Gossip.find(params[:id])
        gossips_params = params.require(:gossip).permit(:title, :content)
        if @gossips.update(gossips_params)
            redirect_to gossips_path
        else
            render :edit
        end
        # Méthode qui met à jour le potin à partir du contenu du formulaire de edit.html.erb, soumis par l'utilisateur
        # pour info, le contenu de ce formulaire sera accessible dans le hash params
        # Une fois la modification faite, on redirige généralement vers la méthode show (pour afficher le potin modifié)
    end
    
    def destroy
        @gossips = Gossip.find(params[:id])
        @gossips.destroy
        redirect_to gossips_path
        # Méthode qui récupère le potin concerné et le détruit en base
        # Une fois la suppression faite, on redirige généralement vers la méthode index (pour afficher la liste à jour)
    end


end
