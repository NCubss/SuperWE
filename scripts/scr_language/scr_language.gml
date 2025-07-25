/**
	@description	Returns the localized version of a string by ID.
	@param			{real} id   The ID to look for
	@returns		{string}
	@deprecated		This function is deprecated in favor of lang() and
					global.lang.
*/
function scr_language(id) {
	if (global.language == Language.SPANISH) {
		switch (id) {
			case 0: return "¡ADVERTENCIA!"
			case 1: return "Este es un 'Fan Game' (de fans para fans)#por lo cual no está respaldado por Nintendo.#Todas las imágenes, músicas y recursos utilizados#en este son propiedad de Nintendo."
			case 2: return "Lunes"
			case 3: return "Martes"
			case 4: return "Miércoles"
			case 5: return "Jueves"
			case 6: return "Viernes"
			case 7: return "Sábado"
			case 8: return "Ya es domingo, ¡a hacer niveles se ha dicho!"
			case 9: return "Feliz Navidad <3"
			case 10: return "¡Feliz Año Nuevo!"
			case 11: return "Jugar"
			case 12: return "Crear un nivel"
			case 13: return "Desafío Super Mario"
			case 14: return "Niveles Mundiales"
			case 15: return "Guardabot"
			case 16: return "Español"
			case 17: return "NOMBRE DE USUARIO"
			case 18: return "INICIAR SESION"
			case 19: return "AJUSTES"
			case 20: return "Controles"
			case 21: return "Idioma"
			case 22: return "Personaje"
			case 23: return "Sonidos"
			case 24: return "Pantalla"
			case 25: return "Efectos Especiales"
			case 26: return "Controles Táctiles"
			case 27: return "Controles SM4J"
			case 28: return "Aceptar" 
			case 29: return "Configurar"
			case 30: return "Activado"
			case 31: return "Desactivado"
			case 32: return "Programadores"
			case 33: return "Sonido/Música"
			case 34: return "Animación y Efectos"
			case 35: return "Tipografía"
			case 36: return "Contribuciones Adicionales"
			case 37: return "Agradecimientos Especiales"
			case 38: return "Power by/Recursos"
			case 39: return "Ninguno"
			case 40: return "Lento"
			case 41: return "Normal"
			case 42: return "Rápido"
			case 43: return "Acciones"
			case 44: return "Elementos"
			case 45: return "Estado" 
			case 46: return "Llega a la meta sin recibir daño"
			case 47: return "Llega a la meta sin tocar el suelo una vez que #hayas separado los pies de él"
			case 48: return "Llega a la meta sin salir del agua"
			case 49: return "Llega a la meta sin recoger ninguna moneda" //continua
			case 50: return "Editar"
			case 51: return "Publicar"
			case 52: return "Tradicional"
			case 53: return "Puzles"
			case 54: return "Contrarreloj"
			case 55: return "Autoavance"
			case 56: return "Automatismos"
			case 57: return "Corto pero intenso"
			case 58: return "Competitivo"
			case 59: return "Tematico"
			case 60: return "Música"
			case 61: return "Artístico"
			case 62: return "Habilidad"
			case 63: return "Disparos"
			case 64: return "Contra jefes"
			case 65: return "En solitario"
			case 66: return "Superfícies"
			case 67: return "Objetos"
			case 68: return "Enemigos"
			case 69: return "Artilugios"
			case 70: return "Traducción"
			case 71: return "Para poder publicar el nivel, debes comprobar#que puedes superarlo. ¿Quieres intentarlo ahora?"
			case 72: return "Sí"
			case 73: return "No"
			case 74: return "¡Superalo desde el principio!"
			case 75: return "¡Superalo desde el checkpoint!"
			case 76: return "Espera unos instantes..."
			case 77: return "Publicando..."
			case 78: return "¡Genial!"
			case 79: return "¡Así No!"
			case 80: return "Apariencia"
			case 81: return "Entorno"
			case 82: return "Autoavance"
			case 83: return "Cronometro"
			case 84: return "Condicion Especial"
			case 85: return "Guardar | Cargar"
			case 86: return "Guardar Nivel"
			case 87: return "Link"
			case 88: return "Nombre del Nivel"
			case 89: return "Se procedera a cargar un nivel, se borrarán#todos los elementos colocados hasta ahora.#¿Deseas continuar?"
			case 90: return "Nivel Guardado Correctamente"
			case 91: return "Tienes un objeto que obstruye el inicio"
			case 92: return "No hay elementos para guardar"
			case 93: return "El nivel ya existe"
			case 94: return "Ingrese el nombre del nivel"
			case 95: return "Se han guardado los cambios"
			case 96: return "No se puede cargar el nivel"
			case 97: return "Sesión iniciada"
			case 98: return "No se puede conectar / Actualiza SMM:WE"
			case 99: return "No hay conexión a Internet"
			case 100: return "Usuario"
			case 101: return "Contraseña"
			case 102: return "Se ha producido un error"
			case 103: return "No se puede leer el nivel"
			case 104: return "Guardar#nuevo nivel"
			case 105: return "Guardar#cambios"
			case 106: return "Cargar" 
			case 107: return "Cargando..."
			case 108: return "Explorar niveles"
			case 109: return "Clasificaciones"
			case 110: return "Juego Local"
			case 111: return "Desafio de Mario Sin Fin" 
			case 112: return "Prometedores"
			case 113: return "Populares"
			case 114: return "Novedades"
			case 115: return "Busqueda"
			case 116: return "IDENTIFICADOR"
			case 117: return "ESTILO DEL JUEGO"
			case 118: return "TEMA DEL CURSO"
			case 119: return "DIFICULTAD"
			case 120: return "TIEMPO"
			case 121: return "HISTORIAL"
			case 122: return "REACCION"
			case 123: return "ORDEN"
			case 124: return "BUSCAR"
			case 125: return "Facil"
			case 126: return "Normal"
			case 127: return "Dificil"
			case 128: return "Experto"
			case 129: return "Hoy"
			case 130: return "Ultimos 2 dias"
			case 131: return "Ultimos 3 dias"
			case 132: return "Ultimos 4 dias"
			case 133: return "Ultimos 5 dias"
			case 134: return "Ultimos 6 dias"
			case 135: return "Ultima semana"
			case 136: return "Último mes"
			case 137: return "Mis superados"
			case 138: return "Mis no superados"
			case 139: return "Mis gustados"
			case 140: return "Mis no gustados"
			case 141: return "Novedades"
			case 142: return "Mas antiguos"
			case 143: return "Descargar"
			case 144: return "ID del nivel"
			case 145: return "Sin Record"
			case 146: return "Victorias"
			case 147: return "Cualquiera"
			case 148: return "NOMBRE DEL NIVEL"
			case 149: return "NOMBRE DEL CREADOR"
			case 150: return "Volver a empezar"
			case 151: return "Salir"
			case 152: return "Continuar"
			case 153: return "Reportar"
			case 154: return "Nível del agua"
			case 155: return "Nível de la lava"
			case 156: return "Goma de borrar"
			case 157: return "Elige un archivo"
			case 158: return "Copiar"
			case 159: return "Nueva Partida"
			case 160: return "Siguiente"
			case 161: return "Salir"
			case 162: return "Guardar"
			case 163: return "Detalles"
			case 164: return "Eliminar"
			case 165: return "Sin Condición"
			case 166: return "Temas"
			case 167: return "FPS"
			case 168: return "Pulsa"
			case 169: return "Aqui"
			case 170: return "Traducciones"
			case 171: return "La condición especial ya no puede cumplirse"
			case 172: return "Niveles"
			case 173: return "Tiempo de conexion agotado"
			case 174: return "Error al recuperar los datos"
			case 175: return "Hubo un Problema al publicar el nivel"
			case 176: return "Copiar y salir"
			case 177: return "No se puede publicar este nivel debido a que#utiliza un lenguaje inapropiado"
			case 178: return "Nivel descargado" 
			case 179: return "No se pudo descargar el nivel" 
			case 180: return "Ocurrio un Error" 
			case 181: return "Se agrego a prometedores" 
			case 182: return "Se elimino de prometedores"
			case 183: return "Se ha reportado el nivel"
			case 184: return "Ya reportaste el nivel"
			case 185: return "No puedes reportar tus niveles"
			case 186: return "Reintentar"
			case 187: return "Configurar los Controles"
			case 188: return "Crear una cuenta"
			case 189: return "Descripcion"
			case 190: return "Sin Descripción"
			case 191: return "ETIQUETAS"
			case 192: return "Mas Populares" 
			case 193: return "POPULARIDAD" 
			case 194: return "IDIOMA" 
			case 195: return "Menos Populares"
			case 196: return "No Prometedor"
			case 197: return "Prometedor"
			case 198: return "PROMETEDORES"
			case 199: return "IDIOMA ETIQUETAS"
			case 200: return "Ingrese la descripcion del nivel"
			case 201: return "¿Estás seguro de iniciar una nueva partida?#Perderás todo el progreso que hiciste#en el resto de dificultades."
		}
	} else if (global.language == Language.ENGLISH) {
		switch (id) {
			case 0: return "DISCLAIMER" // marked
			case 1: return "This is a fan game (by fans for fans)#which is not endorsed Nintendo.#All images, music and resources used #in this are the owned by Nintendo." // marked
			case 2: return "Monday" // marked
			case 3: return "Tuesday" // marked
			case 4: return "Wednesday" // marked
			case 5: return "Thursday" // marked
			case 6: return "Friday" // marked
			case 7: return "Saturday" // marked
			case 8: return "Happy Sunday, let's get making!" // marked
			case 9: return "Merry Christmas" // marked
			case 10: return "Happy New Year!" // marked
			case 11: return "Play" // marked
			case 12: return "Course Maker" // marked
			case 13: return "Endless Challenge" // marked
			case 14: return "Course World" // marked
			case 15: return "Coursebot" // marked
			case 16: return "English" // marked
			case 17: return "USERNAME" // marked
			case 18: return "LOG IN" // marked
			case 19: return "SETTINGS" // marked
			case 20: return "Controls" // marked
			case 21: return "Language" // marked
			case 22: return "Character" // marked
			case 23: return "Sounds" // marked
			case 24: return "Window Size" // marked
			case 25: return "Special Effects" // marked
			case 26: return "Touch Controls" // marked
			case 27: return "SM4J Controls" // marked
			case 28: return "Ok" // marked
			case 29: return "Configure" // marked
			case 30: return "Activated" // marked
			case 31: return "Deactivated" // marked
			case 32: return "Programmers" // marked
			case 33: return "Sounds/Music" // marked
			case 34: return "Animation and Effects" // marked
			case 35: return "Typography" // marked
			case 36: return "Additional Contributions" // marked
			case 37: return "Special Thanks" // marked
			case 38: return "Powered by/Resources" // marked
			case 39: return "None" // marked
			case 40: return "Slow" // marked
			case 41: return "Normal" // marked
			case 42: return "Fast" // marked
			case 43: return "Actions" // marked
			case 44: return "Parts" // marked
			case 45: return "Status" // marked
			case 46: return "Reach the goal without taking damage" // marked
			case 47: return "Reach the goal without landing#after leaving the ground" // marked
			case 48: return "Reach the goal without getting out of the water" // marked
			case 49: return "Reach the goal without collecting any coin" // marked
			case 50: return "Edit" // marked
			case 51: return "Upload" // marked
			case 52: return "Standard" // marked
			case 53: return "Puzzle-solving" // marked
			case 54: return "Speedrun" // marked
			case 55: return "Autoscroll" // marked
			case 56: return "Auto-Mario" // marked
			case 57: return "Short and Sweet" // marked
			case 58: return "Multiplayer Versus" // marked
			case 59: return "Themed" // marked
			case 60: return "Music" // marked
			case 61: return "Art" // marked
			case 62: return "Technical" // marked
			case 63: return "Shooter" // marked
			case 64: return "Boss battle" // marked
			case 65: return "Single player" // marked
			case 66: return "Terrain" // marked
			case 67: return "Items" // marked
			case 68: return "Enemies" // marked
			case 69: return "Gizmos" // marked
			case 70: return "Translation" // UNUSED
			case 71: return "You need to clear your course before uploading it.#Ready to do a clear check?" // marked
			case 72: return "Yes" // marked
			case 73: return "No" // marked
			case 74: return "Clear from the start." // marked
			case 75: return "Clear from checkpoint." // marked
			case 76: return "Please wait..." // marked
			case 77: return "Uploading..." // marked
			case 78: return "I like it!" // marked
			case 79: return "Boo!" // marked
			case 80: return "Game Style" // marked
			case 81: return "Game Theme" // marked
			case 82: return "Autoscroll" // marked
			case 83: return "Timer" // marked
			case 84: return "Clear Condition" // marked
			case 85: return "Save | Load" // marked
			case 86: return "Save Course"  // UNUSED
			case 87: return "Link" // UNUSED
			case 88: return "Course Name"
			case 89: return "The course you're currently making will be#lost. Continue?" // marked
			case 90: return "Course saved" // marked
			case 91: return "You have an object that obstructs the start" // marked
			case 92: return "There are no items to save" // marked
			case 93: return "This course already exists" // marked
			case 94: return "Enter course name" // marked
			case 95: return "Changes saved" // marked
			case 96: return "Unable to load course" // marked
			case 97: return "Logged in" // marked
			case 98: return "Can't connect / Update SMM:WE" // marked
			case 99: return "There's no internet connection" // marked
			case 100: return "Username" // marked
			case 101: return "Password" // marked
			case 102: return "An error occured" // UNUSED
			case 103: return "Unable to read course" // marked
			case 104: return "Save As" // marked
			case 105: return "Save" // marked
			case 106: return "Load" // marked
			case 107: return "Loading..." // marked
			case 108: return "Courses" // marked
			case 109: return "Leaderboards" // marked
			case 110: return "Network Play" // marked
			case 111: return "Endless Challenge" // marked
			case 112: return "Featured" // marked
			case 113: return "Popular" // marked
			case 114: return "New" // marked
			case 115: return "Search" // marked
			case 116: return "COURSE ID" // marked
			case 117: return "GAME STYLE" // marked
			case 118: return "GAME THEME" // marked
			case 119: return "DIFFICULTY" // marked
			case 120: return "DATE UPLOADED" // marked
			case 121: return "CLEAR STATUS" // marked
			case 122: return "RATING" // marked
			case 123: return "ORDER BY" // marked
			case 124: return "SEARCH" // marked
			case 125: return "Easy" // marked
			case 126: return "Normal" // marked
			case 127: return "Expert" // marked
			case 128: return "Super Expert" // marked
			case 129: return "Today" // marked
			case 130: return "Last 2 days" // marked
			case 131: return "Last 3 days" // marked
			case 132: return "Last 4 days" // marked
			case 133: return "Last 5 days" // marked
			case 134: return "Last 6 days" // marked
			case 135: return "Last week" // marked
			case 136: return "Last month" // marked
			case 137: return "Cleared" // marked
			case 138: return "Not cleared" // marked
			case 139: return "Liked" // marked
			case 140: return "Boo'ed" // marked
			case 141: return "Newest" // marked
			case 142: return "Oldest" // marked
			case 143: return "Download" // marked
			case 144: return "Course ID" // UNUSED
			case 145: return "No Record" // marked
			case 146: return "Clear Rate" // marked
			case 147: return "Any" // UNUSED
			case 148: return "COURSE NAME" // marked
			case 149: return "MAKER NAME" // marked
			case 150: return "Start over" // marked
			case 151: return "Quit" // UNUSED
			case 152: return "Continue" // marked
			case 153: return "Report" // marked
			case 154: return "Water Level" // marked
			case 155: return "Lava Level" // marked
			case 156: return "Erase" // marked
			case 157: return "Select a course" // UNUSED
			case 158: return "Copy" // UNUSED
			case 159: return "New Game" // marked
			case 160: return "Next" // marked
			case 161: return "Exit Course" // marked
			case 162: return "Save" // UNUSED
			case 163: return "Details" // UNUSED
			case 164: return "Remove" // UNUSED
			case 165: return "No Clear Condition" // UNUSED
			case 166: return "Theme" // UNUSED
			case 167: return "FPS" // UNUSED
			case 168: return "Press" // UNUSED
			case 169: return "Here" // UNUSED
			case 170: return "Translations" // marked
			case 171: return "Clear Condition Failed" // marked
			case 172: return "Courses" // marked
			case 173: return "Connection timed out" // marked
			case 174: return "Error retrieving data" // marked
			case 175: return "Couldn't upload the level" // marked
			case 176: return "Copy and exit" // UNUSED
			case 177: return "Unable to upload this course because#it uses inappropriate language" // marked
			case 178: return "Level downloaded" // marked
			case 179: return "Couldn't download the level" // marked
			case 180: return "An error occurred" // This is the same as #102, but it doesn't have a spelling mistake? Also, UNUSED
			case 181: return "Added to featured" // marked
			case 182: return "Deleted from featured" // marked
			case 183: return "The course has been reported" // marked
			case 184: return "You already reported the course" // marked
			case 185: return "You can't report your courses" // marked
			case 186: return "Retry" // marked
			case 187: return "Configure Controls" // marked
			case 188: return "Create an account" // marked
			case 189: return "Description" // marked
			case 190: return "No Description" // marked
			case 191: return "Tags" // UNUSED
			case 192: return "Most Popular" // marked
			case 193: return "POPULARITY" // marked
			case 194: return "LANGUAGE"  // UNUSED
			case 195: return "Least Popular" // marked
			case 196: return "Not Featured" // marked
			case 197: return "Featured" // marked
			case 198: return "FEATURED" // marked
			case 199: return "TAGS LANGUAGE" // UNUSED
			case 200: return "Enter course description" // marked
			case 201: return "Are you sure to start a new game?#You will lose all the progress you made#in the rest of the difficulties." // marked
		}
	} else if (global.language == Language.PORTUGUESE) {
		switch (id) {
			case 0: return "AVISO!"
			case 1: return "Este é um 'Fã Game' (de fãs para fãs)#por isso não é endossado pela Nintendo.#Todas as imagens, músicas e recursos usados#são propriedades da Nintendo."
			case 2: return "Segunda-feira"
			case 3: return "Terça-feira"
			case 4: return "Quarta-feira"
			case 5: return "Quinta-feira"
			case 6: return "Sexta-feira"
			case 7: return "Sábado"
			case 8: return "Já é domingo, vamos fazer níveis!"
			case 9: return "Feliz Natal"
			case 10: return "Feliz Ano Novo"
			case 11: return "Jogar"
			case 12: return "Criar um nível"
			case 13: return "Desafio Super Mario"
			case 14: return "Níveis Mundiais"
			case 15: return "Guardabot"
			case 16: return "Português"
			case 17: return "NOME DE USUÁRIO"
			case 18: return "INICIAR SESSÃO"
			case 19: return "Configurações"
			case 20: return "Controles"
			case 21: return "Idioma"
			case 22: return "Personagem"
			case 23: return "Sons"
			case 24: return "Janela"
			case 25: return "Efeitos Especiais"
			case 26: return "Controles de toque"
			case 27: return "Controles SM4J"
			case 28: return "Aceitar"
			case 29: return "Configurar"
			case 30: return "Ativado"
			case 31: return "Desativado"
			case 32: return "Programadores"
			case 33: return "Som/Música"
			case 34: return "Animação e efeitos"
			case 35: return "Fonte"
			case 36: return "Contribuições Adicionais"
			case 37: return "Agradecimentos especiais"
			case 38: return "Power by/Recursos"
			case 39: return "Nenhum"
			case 40: return "Lento"
			case 41: return "Normal"
			case 42: return "Rápido"
			case 43: return "Ações"
			case 44: return "Elementos"
			case 45: return "Estado"
			case 46: return "Alcance a meta sem sofrer dano"
			case 47: return "Alcance a meta sem tocar o chão depois#de separar os pés dela"
			case 48: return "Alcance a meta sem sair da água"
			case 49: return "Alcance a meta sem coletar nenhuma moeda"
			case 50: return "Editar"
			case 51: return "Publicar"
			case 52: return "Tradicional"
			case 53: return "Puzzles"
			case 54: return "Contra-relógio"
			case 55: return "Avanço automático"
			case 56: return "Automáticos"
			case 57: return "Curto porém intenso"
			case 58: return "Competitivo"
			case 59: return "Temático"
			case 60: return "Música"
			case 61: return "Artístico"
			case 62: return "Habilidade"
			case 63: return "Disparos"
			case 64: return "Contra chefes"
			case 65: return "Sozinho"
			case 66: return "Superfícies"
			case 67: return "Objetos"
			case 68: return "Inimigos"
			case 69: return "Aparelhos"
			case 70: return "Tradução"
			case 71: return "Para publicar o nível, você deve provar que pode vencê-lo.# Quer experimentar agora?"
			case 72: return "Sim"
			case 73: return "Não"
			case 74: return "Supere desde o início!"
			case 75: return "Supere desde do checkpoint!"
			case 76: return "Aguarde alguns instantes..."
			case 77: return "Publicando..."
			case 78: return "Incrível!"
			case 79: return "Assim não!"
			case 80: return "Aparência"
			case 81: return "Ambiente"
			case 82: return "Avanço automático"
			case 83: return "Cronômetro"
			case 84: return "Condição especial"
			case 85: return "Salvar | Carregar"
			case 86: return "Salvar Nível"
			case 87: return "Link"
			case 88: return "Nome do nível"
			case 89: return "Um nível será carregado, todos os elementos#colocados até agora serão excluídos.#Deseja continuar?"
			case 90: return "Nível salvo com sucesso"
			case 91: return "Você tem um objeto que obstrui o início"
			case 92: return "Não há itens para salvar"
			case 93: return "O nível já existe"
			case 94: return "Digite o nome do nível"
			case 95: return "As mudanças foram salvas"
			case 96: return "Não é possível carregar o nível"
			case 97: return "Sessão iniciada"
			case 98: return "Falha ao fazer login"
			case 99: return " Não há conexão com a Internet"
			case 100: return "Usuário"
			case 101: return "Senha"
			case 102: return "Um erro ocorreu"
			case 103: return "O nível não pode ser lido"
			case 104: return "Salvar#novo nível"
			case 105: return "Salvar#mudança"
			case 106: return "Carregar"
			case 107: return "Carregando..."
			case 108: return "Explorar níveis"
			case 109: return "Classificações"
			case 110: return "Jogo local"
			case 111: return "Desafio Mario Sem Fim"
			case 112: return "Promissores"
			case 113: return "Populares"
			case 114: return "Novidades"
			case 115: return "Procurar"
			case 116: return "IDENTIFICADOR"
			case 117: return "ESTILO DE JOGO"
			case 118: return "TEMA DO CURSOR"
			case 119: return "DIFICULDADE"
			case 120: return "TEMPO"
			case 121: return "REGISTRO"
			case 122: return "REAÇÃO"
			case 123: return "ORDEM"
			case 124: return "BUSCAR"
			case 125: return "Fácil"
			case 126: return "Normal"
			case 127: return "Difícil"
			case 128: return "Super Difícil"
			case 129: return "Hoje"
			case 130: return "Últimos 2 dias"
			case 131: return "Últimos 3 dias"
			case 132: return "Últimos 4 dias"
			case 133: return "Últimos 5 dias"
			case 134: return "Últimos 6 dias"
			case 135: return "Semana anterior"
			case 136: return "Último mês"
			case 137: return "Meus superados"
			case 138: return "Meus não superados"
			case 139: return "Meus favoritos"
			case 140: return "Meus não favoritos"
			case 141: return "Novidades"
			case 142: return "Mais antigos"
			case 143: return "Download"
			case 144: return "ID do nível"
			case 145: return "Sem Recordes"
			case 146: return "Vitórias"
			case 147: return "Qualquer um"
			case 148: return "NOME DO NIVEL"
			case 149: return "NOME DO CRIADOR"
			case 150: return "Começar de novo"
			case 151: return "Sair"
			case 152: return "Continuar"
			case 153: return "Reportar"
			case 154: return "Nível da água"
			case 155: return "Nível da lava"
			case 156: return "Borracha"
			case 157: return "Escolha um arquivo"
			case 158: return "Copiar"
			case 159: return "Nova Partida"
			case 160: return "Seguinte"
			case 161: return "Sair"
			case 162: return "Salvar"
			case 163: return "Detalhes"
			case 164: return "Eliminar"
			case 165: return "Sem Condição"
			case 166: return "Temas"
			case 167: return "FPS"
			case 168: return "Pressione"
			case 169: return "Aqui"
			case 170: return "Traduções"
			case 171: return "A condição especial não pode mais ser atendida"
			case 172: return "Niveis"
			case 173: return "Conexão expirou"
			case 174: return "Erro ao recuperar dados"
			case 175: return "Ocorreu um problema ao publicar o nível"
			case 176: return "Copiar e sair" 
			case 177: return "Não é possível publicar este nível porque#ele usa linguagem imprópria"
			case 178: return "Nivel baixado"  
			case 179: return "Não foi possível baixar o nível"
			case 180: return "Ocorreu um erro"
			case 181: return "Adicionado ao promissores"
			case 182: return "Eliminado de promissores"
			case 183: return "O nivel foi reportado"
			case 184: return "Voce ja relatou o nivel"
			case 185: return "Você não pode relatar seus níveis"
			case 186: return "Repetir"
			case 187: return "Configurar Controles" 
			case 188: return "Criar uma conta"
			case 189: return "Descrição"
			case 190: return "Sem Descrição"
			case 191: return "Rótulos"
			case 192: return "Mais Populares"
			case 193: return "POPULARIDADE" 
			case 194: return "IDIOMA" 
			case 195: return "Menos Populares"
			case 196: return "Nao Promissor"
			case 197: return "Promissor"
			case 198: return "PROMISSORES"
			case 199: return "IDIOMA ROTULOS"
			case 200: return "Digite o descrição do nível"
			case 201: return "Tem certeza de que quer iniciar uma nova partida?#Você perdera todo o progresso q fez#no resto das dificuldades."
		}
	} else if (global.language == Language.ITALIAN) {
		switch (id) {
 			case 0: return "ATTENZIONE!"
 			case 1: return "Questo è un 'Fan Game' (dai fan per i fan)#quindi non è approvato da Nintendo.#Tutte le immagini, la musica e le risorse utilizzate# sono di proprietà di Nintendo."
 			case 2: return "Lunedì"
 			case 3: return "Martedì"
 			case 4: return "Mercoledì"
 			case 5: return "Giovedì"
 			case 6: return "Venerdì"
 			case 7: return "Sabato"
 			case 8: return "È già Domenica, facciamo i livelli!"
 			case 9: return "Buon Natale <3"
 			case 10: return "Felice Anno Nuovo!"
 			case 11: return "Gioca"
 			case 12: return "Crea un livello"
 			case 13: return "Sfida Super Mario"
 			case 14: return "Livelli Dal Mondo"
 			case 15: return "Memobot"
 			case 16: return "Italiano"
 			case 17: return "NOME UTENTE"
 			case 18: return "ACCEDI"
 			case 19: return "IMPOSTAZIONI"
 			case 20: return "Controlli"
 			case 21: return "Lingua"
 			case 22: return "Personaggi"
 			case 23: return "Suoni"
 			case 24: return "Schermo"
 			case 25: return "Effetti speciali"
 			case 26: return "Controlli touch"
 			case 27: return "Controlli SM4J"
 			case 28: return "OK"
 			case 29: return "Configura"
 			case 30: return "Abilitato"
 			case 31: return "Disabilitato"
 			case 32: return "Programmatori"
 			case 33: return "Suono/Musica"
 			case 34: return "Animazione ed effetti"
 			case 35: return "Carattere tipografico"
 			case 36: return "Contributi Aggiuntivi"
 			case 37: return "Ringraziamenti speciali"
 			case 38: return "Power by/Risorse"
 			case 39: return "Nessuno"
 			case 40: return "Lento"
 			case 41: return "Normale"
 			case 42: return "Veloce"
 			case 43: return "Azioni"
 			case 44: return "Elementi"
 			case 45: return "Stato"
 			case 46: return "Raggiungi il traguardo senza subire danni"
 			case 47: return "Raggiungi il traguardo senza toccare terra#dopo un salto"
 			case 48: return "Raggiungi il traguardo senza lasciare l'acqua"
 			case 49: return "Raggiungi il traguardo senza raccogliere monete"
 			case 50: return "Modifica"
 			case 51: return "Pubblica"
 			case 52: return "Classico"
 			case 53: return "Rompicapi"
 			case 54: return "Corsa"
 			case 55: return "Scorrimento"
 			case 56: return "Automatico"
 			case 57: return "Corto ma bello"
 			case 58: return "Competizione"
 			case 59: return "Tematico"
 			case 60: return "Musica"
 			case 61: return "Artistico"
 			case 62: return "Tecnico"
 			case 63: return "Sparatutto"
 			case 64: return "Scontro col boss"
 			case 65: return "Un giocatore"
 			case 66: return "Terreno"
 			case 67: return "Oggetti"
 			case 68: return "Nemici"
 			case 69: return "Dispositivi"
 			case 70: return "Traduzione"
 			case 71: return "Devi superare il livello prima di poterlo pubblicare.#Vuoi provare a superarlo?"
 			case 72: return "Sì"
 			case 73: return "No"
 			case 74: return "Superalo dall'inizio!"
 			case 75: return "Superalo dal checkpoint!"
 			case 76: return "Aspetta qualche istante..."
 			case 77: return "Pubblicazione..."
 			case 78: return "Bello"
 			case 79: return "Mah..."
 			case 80: return "Stile"
 			case 81: return "Tema"
 			case 82: return "Scorrimento automatico"
 			case 83: return "Orologio"
 			case 84: return "Condizione Speciale"
 			case 85: return "Salva | Carica"
 			case 86: return "Salva livello"
 			case 87: return "Link"
 			case 88: return "Nome del livello"
 			case 89: return "Verrà caricato un livello, #tutti gli elementi posizionati finora verranno cancellati.#Vuoi continuare?"
 			case 90: return "Livello salvato con successo"
 			case 91: return "Hai un oggetto che ostruisce l'inizio"
 			case 92: return "Nessun elemento da salvare"
 			case 93: return "Il livello esiste già"
 			case 94: return "Inserisci il nome del livello"
 			case 95: return "Le modifiche sono state salvate"
 			case 96: return "Impossibile caricare il livello"
 			case 97: return "Sessione iniziata"
 			case 98: return "Accesso non riuscito"
 			case 99: return "Nessuna connessione Internet"
 			case 100: return "Utente"
 			case 101: return "Password"
 			case 102: return "Si è verificato un errore"
 			case 103: return "Impossibile leggere il livello"
 			case 104: return "Salva#nuovo livello"
 			case 105: return "Salva#modifiche"
 			case 106: return "Carica"
 			case 107: return "Caricamento in corso..."
 			case 108: return "Esplora livelli"
 			case 109: return "Classifica"
 			case 110: return "Partita locale"
 			case 111: return "Sfida Infinita"
 			case 112: return "Promettenti"
 			case 113: return "Popolari"
 			case 114: return "Nuovi"
 			case 115: return "Ricerca dettagliata"
 			case 116: return "IDENTIFICATORE"
 			case 117: return "STILE"
 			case 118: return "TEMA"
 			case 119: return "DIFFICOLTÀ"
 			case 120: return "TEMPO"
 			case 121: return "STORIA"
 			case 122: return "REAZIONI"
 			case 123: return "ORDINE"
 			case 124: return "CERCA"
 			case 125: return "Facile"
 			case 126: return "Normale"
 			case 127: return "Difficile"
 			case 128: return "Super difficile"
 			case 129: return "Oggi"
 			case 130: return "Ultimi 2 giorni"
 			case 131: return "Ultimi 3 giorni"
 			case 132: return "Ultimi 4 giorni"
 			case 133: return "Ultimi 5 giorni"
 			case 134: return "Ultimi 6 giorni"
 			case 135: return "La scorsa settimana"
 			case 136: return "Ultimo mese"
 			case 137: return "I miei superati"
 			case 138: return "I miei fallimenti"
 			case 139: return "Mi piace"
 			case 140: return "Non mi piace"
 			case 141: return "Più nuovi"
 			case 142: return "Più vecchi"
 			case 143: return "Scarica"
 			case 144: return "ID livello"
 			case 145: return "Nessun record"
 			case 146: return "Vittoria"
 			case 147: return "Qualsiasi"
 			case 148: return "NOME LIVELLO"
 			case 149: return "NOME CREATORE"
 			case 150: return "Ricomincia da capo"
 			case 151: return "Esci"
 			case 152: return "Continua"
 			case 153: return "Segnala"
 			case 154: return "Livello dell'acqua"
 			case 155: return "Livello della lava"
 			case 156: return "Gomma"
 			case 157: return "Scegli un file"
 			case 158: return "Copia"
 			case 159: return "Nuova partita"
 			case 160: return "Avanti"
 			case 161: return "Esci"
 			case 162: return "Salva"
 			case 163: return "Dettagli"
 			case 164: return "Elimina"
 			case 165: return "Nessuna condizione"
 			case 166: return "Temi"
 			case 167: return "FPS"
 			case 168: return "Premi"
 			case 169: return "Qua"
 			case 170: return "Traduzioni"
 			case 171: return "La condizione speciale non può essere soddisfatta"
 			case 172: return "Livelli"
 			case 173: return "Connessione scaduta"
 			case 174: return "Errore durante il recupero dei dati"
 			case 175: return "Si è verificato un problema durante la pubblicazione del livello"
 			case 176: return "Copia ed esci"
 			case 177: return "Impossibile pubblicare questo livello perché # utilizza un linguaggio inappropriato"
 			case 178: return "Livello scaricato"
 			case 179: return "Impossibile scaricare il livello"
 			case 180: return "Si è verificato un errore"
 			case 181: return "Aggiunto ai promettenti"
 			case 182: return "Rimosso dai promettenti"
 			case 183: return "Il livello è stato segnalato"
 			case 184: return "Hai già segnalato il livello"
 			case 185: return "Non puoi segnalare i tuoi livelli"
 			case 186: return "Riprova"
 			case 187: return "Configura i controlli"
 			case 188: return "Crea un account"
 			case 189: return "Descrizione"
 			case 190: return "Nessuna descrizione"
 			case 191: return "Etichette"
 			case 192: return "Più Popolari"
 			case 193: return "POPOLARITA'" 
 			case 194: return "LINGUA" 
 			case 195: return "Meno Popolari" 
 			case 196: return "Non Promettente"
 			case 197: return "Promettente"
 			case 198: return "PROMETTENTI"
 			case 199: return "LINGUA ETICHETTE"
 			case 200: return "Inserisci la descrizione del livello"
 			case 201: return "Sei sicuro di iniziare una nuova partita?#Perderai tutti i progressi fatti#nelle altre difficoltà."
		}
	} else if (global.language == Language.CHINESE) {
		switch (id) {
			case 0: return "免责声明"
			case 1: return "本游戏为同人游戏，#未经任天堂许可，#其中的图像、声音等资源#版权归任天堂所有。"
			case 2: return "星期一"
			case 3: return "星期二"
			case 4: return "星期三"
			case 5: return "星期四"
			case 6: return "星期五"
			case 7: return "星期六"
			case 8: return "今天是星期日，一起来制造吧！"
			case 9: return "圣诞快乐！"
			case 10: return "新年快乐！"
			case 11: return "游玩"
			case 12: return "创作关卡"
			case 13: return "马力欧耐力挑战"
			case 14: return "全球关卡"
			case 15: return "关卡机器人"
			case 16: return "简体中文"
			case 17: return "用户名"
			case 18: return "登录"
			case 19: return "选项"
			case 20: return "控制"
			case 21: return "语言"
			case 22: return "人物"
			case 23: return "音量"
			case 24: return "窗口大小"
			case 25: return "特效"
			case 26: return "虚拟案件"
			case 27: return "经典操作模式"
			case 28: return "OK"
			case 29: return "设置"
			case 30: return "启用"
			case 31: return "禁用"
			case 32: return "程序员"
			case 33: return "音乐和音效"
			case 34: return "动画和动效"
			case 35: return "字体"
			case 36: return "其他贡献者"
			case 37: return "特别感谢"
			case 38: return "引擎和资源"
			case 39: return "无"
			case 40: return "慢速"
			case 41: return "中等"
			case 42: return "快速"
			case 43: return "操作"
			case 44: return "零件"
			case 45: return "状态"
			case 46: return "在1次也没有受到伤害的状态下通过终点"
			case 47: return "在离开地面后不着地的状态下通过终点"
			case 48: return "没有离开过水面而通过终点"
			case 49: return "不收集任何金币而通过终点"
			case 50: return "编辑"
			case 51: return "发布"
			case 52: return "标准"
			case 53: return "解谜"
			case 54: return "计时挑战"
			case 55: return "自动卷轴"
			case 56: return "自动马力欧"
			case 57: return "一次通过"
			case 58: return "多人对战"
			case 59: return "机关设计"
			case 60: return "音乐"
			case 61: return "美术"
			case 62: return "技巧"
			case 63: return "射击"
			case 64: return "对战BOSS"
			case 65: return "单打"
			case 66: return "地形"
			case 67: return "道具"
			case 68: return "敌人"
			case 69: return "机关"
			case 70: return "翻译"
			case 71: return "如果不通关，就无法发表。#要进行过关确认吗？"
			case 72: return "是"
			case 73: return "否"
			case 74: return "从起始地点确认！"
			case 75: return "从中间点确认！"
			case 76: return "请稍后..."
			case 77: return "正在发布..."
			case 78: return "赞!"
			case 79: return "不好!"
			case 80: return "游戏风格"
			case 81: return "场景类型"
			case 82: return "自动卷轴"
			case 83: return "计时器"
			case 84: return "终点条件"
			case 85: return "保存 | 读取"
			case 86: return "保存关卡"
			case 87: return "林克"
			case 88: return "关卡的名字"
			case 89: return "如果读取关卡，放置的零件将全部消失。#确定要进行吗？"
			case 90: return "关卡已保存。"
			case 91: return "无法保存关卡。"
			case 92: return "无法保存空白关卡。"
			case 93: return "关卡已经存在。"
			case 94: return "请输入关卡名"
			case 95: return "更改已保存。"
			case 96: return "无法载入关卡。"
			case 97: return "登录成功。"
			case 98: return "登录失败。"
			case 99: return "无互联网连接。"
			case 100: return "用户名"
			case 101: return "密码"
			case 102: return "发生错误。"
			case 103: return "无法读取关卡。"
			case 104: return "另存为"
			case 105: return "保存"
			case 106: return "读取"
			case 107: return "正在读取..."
			case 108: return "关卡"
			case 109: return "分类"
			case 110: return "多人对战"
			case 111: return "马力欧耐力挑战"
			case 112: return "期待的关卡"
			case 113: return "受欢迎的"
			case 114: return "新关卡"
			case 115: return "搜索"
			case 116: return "关卡 ID"
			case 117: return "游戏风格"
			case 118: return "场景类型"
			case 119: return "难度"
			case 120: return "发表日"
			case 121: return "过关状态"
			case 122: return "我的评价"
			case 123: return "排序"
			case 124: return "搜索"
			case 125: return "简单"
			case 126: return "普通"
			case 127: return "困难"
			case 128: return "极难"
			case 129: return "今天"
			case 130: return "过去 2 天"
			case 131: return "过去 3 天"
			case 132: return "过去 4 天"
			case 133: return "过去 5 天"
			case 134: return "过去 6 天"
			case 135: return "上一周"
			case 136: return "上个月"
			case 137: return "已过关"
			case 138: return "未过关"
			case 139: return "点过 '赞'"
			case 140: return "点过 '不好'"
			case 141: return "正序"
			case 142: return "倒序"
			case 143: return "下载"
			case 144: return "关卡 ID"
			case 145: return "没有人过关"
			case 146: return "过关率"
			case 147: return "任意"
			case 148: return "关卡名"
			case 149: return "工匠名"
			case 150: return "重新开始"
			case 151: return "离开关卡"
			case 152: return "继续"
			case 153: return "举报"
			case 154: return "水面的高度"
			case 155: return "熔岩的高度"
			case 156: return "橡皮擦"
			case 157: return "选择关卡"
			case 158: return "复制"
			case 159: return "新游戏"
			case 160: return "继续"
			case 161: return "离开关卡"
			case 162: return "保存"
			case 163: return "详情"
			case 164: return "删除"
			case 165: return "没有终点条件"
			case 166: return "场景类型"
			case 167: return "FPS"
			case 168: return "点击"
			case 169: return "此处"
			case 170: return "翻译"
			case 171: return "无法达成终点条件。"
			case 172: return "关卡"
			case 173: return "连接超时。"
			case 174: return "连接中止。"
			case 175: return "无法发布关卡。"
			case 176: return "复制并返回"
			case 177: return "无法发布这个关卡，#因为使用了不恰当的用语。"
			case 178: return "关卡已下载。"
			case 179: return "无法下载关卡。"
			case 180: return "发生错误。"
			case 181: return "已加入“期待的关卡”。"
			case 182: return "已从“期待的关卡”中删除。"
			case 183: return "关卡已举报。"
			case 184: return "你已经举报过这个关卡了。"
			case 185: return "你不能举报自己的关卡。"
			case 186: return "重试"
			case 187: return "设置按键"
			case 188: return "注册账号"
			case 189: return "关卡说明"
			case 190: return "没有描述"
			case 191: return "标签"
			case 192: return "更流行"
			case 193: return "人气" 
			case 194: return "舌头" 
			case 195: return "不太受欢迎"
			case 196: return "没有希望"
			case 197: return "没有特色"
			case 198: return "精选"
			case 199: return "语言标签" 
			case 200: return "输入关卡描述"
			case 201: return "您确定要开始新游戏吗？#你将失去在其他困难上取得的所有进展。"
		}
	}
}

/**
	@description	Returns the language struct (which are located in
					global.lang) for the current language or the given language,
					if specified.
	@param			{real} [language]	The language to use. Will use the
										current language if unspecified.
	@returns		{struct}
*/
function lang(language = global.language) {
	switch (language) {
		case Language.SPANISH:
			return global.languages.es;
		case Language.ENGLISH:
			return global.languages.en;
		case Language.PORTUGUESE:
			return global.languages.pt;
		case Language.ITALIAN:
			return global.languages.it;
		case Language.CHINESE:
			return global.languages.zh;
		default:
			throw(string("Invalid language {0}", string(language)));
	}
}