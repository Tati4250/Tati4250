
usuarios_registrados = []

def mostrar_menu_principal():
    print("Bienvenido a la aplicación")
    if usuarios_registrados:
        print("Usuarios registrados:")
        for usuario in usuarios_registrados:
            print(usuario)
        print("1. Iniciar sesión")
        print("2. Registrar nuevo usuario")
    else:
        print("No hay usuarios registrados")
        print("1. Registrar nuevo usuario")

def registrar_usuario():
    nombre = input("Ingrese su nombre: ")
    correo = input("Ingrese su correo electrónico: ")
    pin = input("Ingrese su PIN: ")
    usuario = {
        "nombre": nombre,
        "correo": correo,
        "pin": pin,
        "casas": []
    }
    usuarios_registrados.append(usuario)
    print("Usuario registrado exitosamente")

def iniciar_sesion():
    correo = input("Ingrese su correo electrónico: ")
    pin = input("Ingrese su PIN: ")
    for usuario in usuarios_registrados:
        if usuario["correo"] == correo and usuario["pin"] == pin:
            mostrar_menu_usuario(usuario)
            return
    print("Correo electrónico o PIN incorrecto")

def mostrar_menu_usuario(usuario):
    while True:
        print(f"Bienvenido, {usuario['nombre']}")
        print("Casas registradas:")
        for casa in usuario["casas"]:
            print(casa)
        print("1. Registrar nueva casa")
        print("2. Seleccionar casa")
        print("3. Cerrar sesión")
        opcion = input("Seleccione una opción: ")
        if opcion == "1":
            registrar_casa(usuario)
        elif opcion == "2":
            seleccionar_casa(usuario)
        elif opcion == "3":
            break
        else:
            print("Opción inválida")

def registrar_casa(usuario):
    nombre_casa = input("Ingrese el nombre de la casa: ")
    for casa in usuario["casas"]:
        if casa["nombre"] == nombre_casa:
            print("Ya existe una casa con ese nombre")
            return
    habitaciones = []
    casa = {
        "nombre": nombre_casa,
        "habitaciones": habitaciones
    }
    usuario["casas"].append(casa)
    print("Casa registrada exitosamente")

def seleccionar_casa(usuario):
    nombre_casa = input("Ingrese el nombre de la casa: ")
    for casa in usuario["casas"]:
        if casa["nombre"] == nombre_casa:
            mostrar_menu_habitaciones(casa)
            return
    print("No se encontró la casa especificada")

def mostrar_menu_habitaciones(casa):
    while True:
        print(f"Casa: {casa['nombre']}")
        print("Habitaciones:")
        for habitacion in casa["habitaciones"]:
            print(habitacion)
        print("1. Registrar nueva habitación")
        print("2. Seleccionar habitación")
        print("3. Volver")
        opcion = input("Seleccione una opción: ")
        if opcion == "1":
            registrar_habitacion(casa)
        elif opcion == "2":
            seleccionar_habitacion(casa)
        elif opcion == "3":
            break
        else:
            print("Opción inválida")

def registrar_habitacion(casa):
    nombre_habitacion = input("Ingrese el nombre de la habitación: ")
    for habitacion in casa["habitaciones"]:
        if habitacion == nombre_habitacion:
            print("Ya existe una habitación con ese nombre")
            return
    casa["habitaciones"].append(nombre_habitacion)
    print("Habitación registrada exitosamente")

def seleccionar_habitacion(casa):
    nombre_habitacion = input("Ingrese el nombre de la habitación: ")
    if nombre_habitacion in casa["habitaciones"]:
        mostrar_menu_dispositivos()
    else:
        print("No se encontró la habitación especificada")

def mostrar_menu_dispositivos():
    while True:
        print("Dispositivos:")
        # Mostrar lista de dispositivos y su estado
        print("1. Registrar nuevo dispositivo")
        print("2. Volver")
        opcion = input("Seleccione una opción: ")
        if opcion == "1":
            registrar_dispositivo()
        elif opcion == "2":
            break
        else:
            print("Opción inválida")

def registrar_dispositivo():
    nombre_dispositivo = input("Ingrese el nombre del dispositivo: ")
    estado_dispositivo = input("Ingrese el estado inicial del dispositivo (encendido o apagado): ")
    # Registrar el dispositivo y su estado

def main():
    while True:
        mostrar_menu_principal()
        opcion = input("Seleccione una opción: ")
        if opcion == "1" and usuarios_registrados:
            iniciar_sesion()
        elif opcion == "1" and not usuarios_registrados:
            registrar_usuario()
        else:
            print("Opción inválida")

if __name__ == "__main__":
    main()

