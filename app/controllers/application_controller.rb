class ApplicationController < ActionController::Base
  protect_from_forgery

def autenticacion
  if current_user.email=="mail.ligabunker@gmail.com"
    return "admin"
  end
  return "usuario"
end

def getUsuarioActual
    return Perfil.where(:email=>current_user.email)[0]
end

def getRank (puntos)
    return ((puntos-500)/100)+5
end
  
def calcularPuntosGanador(puntosGanador,puntosPerdedor)
    diferencia=getRank(puntosGanador)-getRank(puntosPerdedor)

    if(diferencia==0)
      return 10
    end
     
    if(diferencia > 0)
      if(diferencia==1)
	return 6
      end
      if(diferencia==2)
	return 5
      end
      if(diferencia==3)
	return 4
      end
      if(diferencia==4)
	return 3
      end
      if(diferencia>=5)
	return 2
      end
    end
    
    if(diferencia < 0)
	return diferencia*(-1)*15
    end
end

def calcularPuntosPerdedor(puntosGanador,puntosPerdedor)
    diferencia=getRank(puntosGanador)-getRank(puntosPerdedor)

    if(diferencia==0)
      return 5
    end

    if(diferencia > 0)
      if(diferencia==1)
	return 3
      end
      if(diferencia==2)
	return 3
      end
      if(diferencia==3)
	return 2
      end
      if(diferencia==4)
	return 2
      end
      if(diferencia>=5)
	return 1
      end
    end 

    if(diferencia < 0)
	return ((diferencia*(-1)*15)/2.0).ceil
    end   
end

end
