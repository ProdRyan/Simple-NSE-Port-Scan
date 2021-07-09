-- Encabezado --

description = [[
Esto es un ejemplo de un simple scanner de puertos hecho en NSE
]]

author = "xNetting"

-- Reglas a seguir --

r = function(host, port)
    return port.protocol == "tcp"
    and  port.state == "open"
end

-- Accion a ejecutar --

a = function(host, port)
  return "Este puerto esta abierto"
end

---- Uso ----

-- nmap -p 80, 443 --script SimplePortScan target.com

-- Antes que nada, esto es solo un ejemplo

-- Si desea probarlo, puede guardar este codigo en los scripts de nmap

---- Fin ----
