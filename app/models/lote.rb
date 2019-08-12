class Lote < ApplicationRecord
    # belongs_to :cliente

    mount_uploader :imagem, LoteUploader
end
