class Perfil < ActiveRecord::Base
	has_attached_file :avatar, :styles => { 
                                            :thumb=> "70x70#",
    					    :small  => "100x100>",
    					    :medium => "200x200>" }
end
