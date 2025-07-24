global.game = {
	name: "SuperWE",
	// This value is changed if this is a playtest in GameMaker
	version: "Public Demo 2",
	author: "NCubs"
}	

global.languages = {
	es: {
		disclaimer: {
			title: "¡ADVERTENCIA!", // 0
			text: "Este es un 'Fan Game' (de fans para fans)#por lo cual no está respaldado por Nintendo.#Todas las imágenes, músicas y recursos utilizados#en este son propiedad de Nintendo." // 1
		},
		calendar: {
			monday: "Lunes", // 2
			tuesday: "Martes", // 3
			wednesday: "Miércoles", // 4
			thursday: "Jueves", // 5
			friday: "Viernes", // 6
			saturday: "Sábado", // 7
			sunday: "Ya es domingo, ¡a hacer niveles se ha dicho!", // 8
			christmas: "Feliz Navidad <3", // 9
			new_year: "¡Feliz Año Nuevo!" // 10
		},
		pages: {
			main_menu: "MENÚ PRINCIPAL", // new
			level_editor: "Crear un nivel", // 12
			endless: "Desafío Super Mario", // 13
			online: "Niveles Mundiales", // 14
			coursebot: "Guardabot", // 15
			world_editor: "Crea un mundo", // new
			worldbot: "Mundobot" // new
		},
		language: "Español", // 16
		fields: {
			username: "Usuario", // 100
			password: "Contraseña", // 101
			course_name1: "Ingrese el nombre del nivel", // 94
			course_desc: "Ingrese la descripcion del nivel", // 200
			course_name2: "Nombre del Nivel", // 88
			description: "Descripcion", // 189, not sure which one to use
		},
		account: {
			username: "NOMBRE DE USUARIO", // 17
			login: "INICIAR SESION", // 18
			create: "Crear una cuenta" // 188
		},
		login_new: {
			username: "Por favor, introduzca su nombre de usuario (máximo 20 caracteres):"
		},
		coursebot: {
			courses_title: "Niveles", // 172, duplicate of 108
			no_description: "Sin Descripción" // 190
		},
		worldbot: {
			worlds_title: "Super Mundos" // new
		},
		buttons: {
			ok: "Aceptar", // 28
			play: "Jugar", // 11
			edit: "Editar", // 50
			upload: "Publicar", // 51
			yes: "Sí", // 72
			no: "No", // 73
			search: "BUSCAR", // 124
			download: "Descargar", // 143
			"continue": "Continuar", // 152
			restart: "Volver a empezar", // 150
			report: "Reportar", // 153
			erase: "Goma de borrar", // 156
			new_game: "Nueva Partida", // 159
			next: "Siguiente", // 160
			exit_course: "Salir", // 161
			retry: "Reintentar" // 186
		},
		settings: {
			title: "AJUSTES", // 19
			controls: "Controles", // 20
			configure: "Configurar", // 29
			controls_configure: "Configurar los Controles", // 187
			language: "Idioma", // 21
			player: "Personaje", // 22
			volume: "Sonidos", // 23
			window_size: "Pantalla", // 24
			effects: "Efectos Especiales", // 25
			touch: "Controles Táctiles", // 26
			sm4j: "Controles SM4J", // 27
			on: "Activado", // 30
			off: "Desactivado" // 31
		},
		new_settings: {
			video: {
				title: "Vídeo", // new
				window_scale: "Escala de Ventana", // new
				shadows: "Sombras" // new
			},
			controls: {
				title: "Controles" // new
			},
			miscellaneous: {
				title: "Otros" // new
			},
			about: {
				title: "Acerca de" // new
			}
		},
		credits: {
			programmers: "Programadores", // 32
			sfx: "Sonido/Música", // 33
			spriters: "Spriters", // New
			animations_fx: "Animación y Efectos", // 34
			fonts: "Tipografía", // 35
			additional: "Contribuciones Adicionales", // 36
			special_thanks: "Agradecimientos Especiales", // 37
			powered_by: "Power by/Recursos", // 38
			translators: "Traducciones", // 170
			and_you: "Y tú, {0} <3" // new
		},
		autoscroll: {
			none: "Ninguno", // 39
			slow: "Lento", // 40
			normal: "Normal", // 41
			fast: "Rápido" // 42
		},
		conditions: {
			tabs: {
				actions: "Acciones", // 43
				parts: "Elementos", // 44
				status: "Estado" // 45
			},
			no_damage: "Llega a la meta sin recibir daño", // 46
			no_land: "Llega a la meta sin tocar el suelo una vez que #hayas separado los pies de él", // 47
			underwater: "Llega a la meta sin salir del agua", // 48
			no_coins: "Llega a la meta sin recoger ninguna moneda", // 49
			failed: "La condición especial ya no puede cumplirse", // 171
			
		},
		tags: {
			standard: "Tradicional", // 52
			puzzle: "Puzles", // 53
			speedrun: "Contrarreloj", // 54
			autoscroll: "Autoavance", // 55
			auto: "Automatismos", // 56
			short: "Corto pero intenso", // 57
			multiplayer: "Competitivo", // 58
			themed: "Tematico", // 59
			music: "Música", // 60
			art: "Artístico", // 61
			technical: "Habilidad", // 62
			shooter: "Disparos", // 63
			boss: "Contra jefes", // 64
			singleplayer: "En solitario" // 65
		},
		editor: {
			clapperboard: {
				play: "Jugar", // new
				edit: "Editar", // new
			},
			categories: {
				terrain: "Superfícies", // 66
				items: "Objetos", // 67
				enemies: "Enemigos", // 68
				gizmos: "Artilugios" // 69
			},
			upload: {
				message: "Para poder publicar el nivel, debes comprobar#que puedes superarlo. ¿Quieres intentarlo ahora?", // 71
				clear_check: {
					start: "¡Superalo desde el principio!", // 74
					checkpoint: "¡Superalo desde el checkpoint!" // 75
				},
				please_wait: "Espera unos instantes...", // 76
				uploading: "Publicando...", // 77
			},
			tabs: {
				style: "Apariencia", // 80
				theme: "Entorno", // 81
				water_level: "Water Level", // 154
				lava_level: "Lava Level", // 155
				autoscroll: "Autoavance", // 82
				timer: "Cronometro", // 83
				condition: "Condicion Especial", // 84
				coursebot: {
					title: "Guardar | Cargar", // 85
					save: "Guardar#cambios", // 105
					save_as: "Guardar#nuevo nivel", // 104
					load: "Cargar", // 106
					load_confirm: "Se procedera a cargar un nivel, se borrarán#todos los elementos colocados hasta ahora.#¿Deseas continuar?" // 89
				}
			},
			border: {
				erase: "Goma de borrar" // 156
			}
		},
		online: {
			like: "¡Genial!", // 78
			dislike: "¡Así No!", // 79
			loading: "Cargando...", // 107
			pages: {
				courses: "Explorar niveles", // 108
				leaderboard: "Clasificaciones", // 109
				multiplayer: "Juego Local", // 110
				endless: "Desafio de Mario Sin Fin"  // 111
			},
			endless: {
				confirm_new_game: "¿Estás seguro de iniciar una nueva partida?#Perderás todo el progreso que hiciste#en el resto de dificultades." // 201
			},
			level: {
				no_record: "Sin Record", // 145
				clear_rate: "Victorias" // 146
			},
			search_fields: {
				course_id: "IDENTIFICADOR", // 116
				style: "APARIENCIA", // 117
				theme: "ENTORNO", // 118
				difficulty: "DIFICULTAD", // 119
				upload_date: "TIEMPO", // 120
				clear_status: "HISTORIAL", // 121
				rating: "REACCION", // 122
				order_by: "ORDEN", // 123
				course_name: "NOMBRE DEL NIVEL", // 148
				maker_name: "NOMBRE DEL CREADOR", // 149
				popularity: "POPULARIDAD", // 193
				featured: "PROMETEDOR", // 198
			},
			difficulty: {
				easy: "Facil", // 125
				normal: "Normal", // 126
				expert: "Dificil", // 127
				super_expert: "Experto" // 128
			},
			date: {
				today: "Hoy", // 129
				last_2_days: "Ultimos 2 dias", // 130
				last_3_days: "Ultimos 3 dias", // 131
				last_4_days: "Ultimos 4 dias", // 132
				last_5_days: "Ultimos 5 dias", // 133
				last_6_days: "Ultimos 6 dias", // 134
				last_week: "Ultima semana", // 135
				last_month: "Último mes" // 136
			},
			clear_status: {
				cleared: "Mis superados", // 137
				not_cleared: "Mis no superados" // 138
			},
			rating: {
				liked: "Mis gustados", // 139
				booed: "Mis no gustados", // 140
			},
			order_by: {
				newest: "Novedades", // 141
				oldest: "Mas antiguos" // 142
			},
			popularity: {
				most: "Mas Populares",  // 192
				least: "Menos Populares", // 195
			},
			featured: {
				yes: "Prometedor", // 197
				no: "No Prometedor", // 196
			},
			tabs: {
				featured: "Prometedores", // 112
				popular: "Populares", // 113
				newest: "Novedades", // 114
				search: "Busqueda" // 115
			}
		},
		world: {
			hud: {
				world_number: "Mundo {0}" // new
			}
		},
		messages: {
			positive: {
				course_saved: "Nivel Guardado Correctamente", // 90
				saved: "Se han guardado los cambios", // 95
				logged_in: "Sesión iniciada", // 97
				downloaded: "Nivel descargado", // 178, unused
				featured_added: "Se agrego a prometedores", // 181, unused
				featured_removed: "Se elimino de prometedores", // 182, unused
				reported: "Se ha reportado el nivel", // 183, unused
			},
			negative: {
				start_obstructed: "Tienes un objeto que obstruye el inicio", // 91
				no_changes: "No hay elementos para guardar", // 92
				course_exists: "El nivel ya existe", // 93
				load_failed: "No se puede cargar el nivel", // 96
				read_failed: "No se puede leer el nivel", // 103
				outdated: $"No se puede conectar / Actualiza {global.game.name}", // 98
				no_internet: "No hay conexión a Internet", // 99
				timed_out: "Tiempo de conexion agotado", // 173
				data_failed: "Error al recuperar los datos", // 174
				upload_failed: "Hubo un Problema al publicar el nivel", // 175
				inappropriate: "No se puede publicar este nivel debido a que#utiliza un lenguaje inapropiado", // 177, unused
				download_failed: "No se pudo descargar el nivel" , // 179, unused
				already_reported: "Ya reportaste el nivel", // 184, unused
				self_report: "No puedes reportar tus niveles", // 185, unused
				unknown: "Ocurrio un error" // 180, 102, unused?????
			}
		}
	},
	en: {
		disclaimer: {
			title: "DISCLAIMER", // 0
			text: "This is a fan game (by fans for fans)#which is not endorsed by Nintendo.#All images, music and resources used #in this game are the owned by Nintendo." // 1
		},
		calendar: {
			monday: "Monday", // 2
			tuesday: "Tuesday", // 3
			wednesday: "Wednesday", // 4
			thursday: "Thursday", // 5
			friday: "Friday", // 6
			saturday: "Saturday", // 7
			sunday: "Happy Sunday, let's get making!", // 8
			christmas: "Merry Christmas <3", // 9
			new_year: "Happy New Year!" // 10
		},
		pages: {
			main_menu: "MAIN MENU", // new
			level_editor: "Course Maker", // 12
			endless: "Endless Challenge", // 13
			online: "Course World", // 14
			coursebot: "Coursebot", // 15
			world_editor: "World Maker", // new
			worldbot: "Worldbot" // new
		},
		language: "English", // 16
		fields: {
			username: "Username", // 100
			password: "Password", // 101
			course_name1: "Enter course name", // 94
			course_desc: "Enter course description", // 200
			course_name2: "Course Name", // 88
			description: "Description", // 189, not sure which one to use
		},
		account: {
			username: "USERNAME", // 17
			login: "LOG IN", // 18
			create: "Create an account" // 188
		},
		login_new: {
			username: "Please enter your username (max. 20 characters):"
		},
		coursebot: {
			courses_title: "Courses", // 172, duplicate of 108
			no_description: "No Description" // 190
		},
		worldbot: {
			worlds_title: "Super Worlds" // new
		},
		buttons: {
			ok: "OK", // 28
			play: "Play", // 11
			edit: "Edit", // 50
			upload: "Upload", // 51
			yes: "Yes", // 72
			no: "No", // 73
			search: "SEARCH", // 124
			download: "Download", // 143
			"continue": "Continue", // 152
			restart: "Start over", // 150
			report: "Report", // 153
			erase: "Erase", // 156
			new_game: "New Game", // 159
			next: "Next", // 160
			exit_course: "Exit Course", // 161
			retry: "Retry" // 186
		},
		settings: {
			title: "SETTINGS", // 19
			controls: "Controls", // 20
			configure: "Configure", // 29
			controls_configure: "Configure Controls", // 187
			language: "Language", // 21
			player: "Character", // 22
			volume: "Sounds", // 23
			window_size: "Window Size", // 24
			effects: "Special Effects", // 25
			touch: "Touch Controls", // 26
			sm4j: "SM4J Controls", // 27
			on: "Activated", // 30
			off: "Deactivated" // 31
		},
		new_settings: {
			video: {
				title: "Video", // new
				window_scale: "Window Scale", // new
				shadows: "Shadows" // new
			},
			controls: {
				title: "Controls" // new
			},
			miscellaneous: {
				title: "Miscellaneous" // new
			},
			about: {
				title: "About" // new
			}
		},
		credits: {
			programmers: "Programmers", // 32
			sfx: "Sounds/Music", // 33
			spriters: "Spriters", // New
			animations_fx: "Animation and Effects", // 34
			fonts: "Typography", // 35
			additional: "Additional Contributions", // 36
			special_thanks: "Special Thanks", // 37
			powered_by: "Powered by/Resources", // 38
			translators: "Translations", // 170
			and_you: "And you, {0} <3" // new
		},
		autoscroll: {
			none: "None", // 39
			slow: "Slow", // 40
			normal: "Normal", // 41
			fast: "Fast" // 42
		},
		conditions: {
			tabs: {
				actions: "Actions", // 43
				parts: "Parts", // 44
				status: "Status" // 45
			},
			no_damage: "Reach the goal without taking damage", // 46
			no_land: "Reach the goal without landing#after leaving the ground", // 47
			underwater: "Reach the goal without getting out of the water", // 48
			no_coins: "Reach the goal without collecting any coin", // 49
			failed: "Clear Condition Failed", // 171
			
		},
		tags: {
			standard: "Standard", // 52
			puzzle: "Puzzle-solving", // 53
			speedrun: "Speedrun", // 54
			autoscroll: "Autoscroll", // 55
			auto: "Auto-Mario", // 56
			short: "Short and Sweet", // 57
			multiplayer: "Multiplayer Versus", // 58
			themed: "Themed", // 59
			music: "Music", // 60
			art: "Art", // 61
			technical: "Technical", // 62
			shooter: "Shooter", // 63
			boss: "Boss battle", // 64
			singleplayer: "Singleplayer" // 65
		},
		editor: {
			clapperboard: {
				play: "Play", // new
				edit: "Make", // new
			},
			categories: {
				terrain: "Terrain", // 66
				items: "Items", // 67
				enemies: "Enemies", // 68
				gizmos: "Gizmos" // 69
			},
			upload: {
				message: "You need to clear your course before uploading it.#Ready to do a clear check?", // 71
				clear_check: {
					start: "Clear from the start.", // 74
					checkpoint: "Clear from checkpoint." // 75
				},
				please_wait: "Please wait...", // 76
				uploading: "Uploading...", // 77
			},
			tabs: {
				style: "Game Style", // 80
				theme: "Game Theme", // 81
				water_level: "Water Level", // 154
				lava_level: "Lava Level", // 155
				autoscroll: "Autoscroll", // 82
				timer: "Timer", // 83
				condition: "Clear Condition", // 84
				coursebot: {
					title: "Save | Load", // 85
					save: "Save", // 105
					save_as: "Save As", // 104
					load: "Load", // 106
					load_confirm: "The course you're currently making will be#lost. Continue?"
				}
			},
			border: {
				erase: "Erase" // 156
			}
		},
		online: {
			like: "I like it!", // 78
			dislike: "Boo!", // 79
			loading: "Loading...", // 107
			pages: {
				courses: "Courses", // 108
				leaderboard: "Leaderboard", // 109
				multiplayer: "Network Play", // 110
				endless: "Endless Challenge" // 111, duplicate of 13
			},
			endless: {
				confirm_new_game: "Are you sure to start a new game?#You will lose all the progress you made#in the rest of the difficulties." // 201
			},
			level: {
				no_record: "No Record", // 145
				clear_rate: "Clear Rate", // 146
			},
			search_fields: {
				course_id: "COURSE ID", // 116
				style: "GAME STYLE", // 117
				theme: "GAME THEME", // 118
				difficulty: "DIFFICULTY", // 119
				upload_date: "DATE UPLOADED", // 120
				clear_status: "CLEAR STATUS", // 121
				rating: "RATING", // 122
				order_by: "ORDER BY", // 123
				course_name: "COURSE NAME", // 148
				maker_name: "MAKER NAME", // 149
				popularity: "POPULARITY", // 193
				featured: "FEATURED", // 198
			},
			difficulty: {
				easy: "Easy", // 125
				normal: "Normal", // 126
				expert: "Expert", // 127
				super_expert: "Super Expert" // 128
			},
			date: {
				today: "Today", // 129
				last_2_days: "Last 2 days", // 130
				last_3_days: "Last 3 days", // 131
				last_4_days: "Last 4 days", // 132
				last_5_days: "Last 5 days", // 133
				last_6_days: "Last 6 days", // 134
				last_week: "Last week", // 135
				last_month: "Last month" // 136
			},
			clear_status: {
				cleared: "Cleared", // 137
				not_cleared: "Not cleared" // 138
			},
			rating: {
				liked: "Liked", // 139
				booed: "Boo'ed", // 140
			},
			order_by: {
				newest: "Newest", // 141
				oldest: "Oldest" // 142
			},
			popularity: {
				most: "Most Popular",  // 192
				least: "Least Popular", // 195
			},
			featured: {
				yes: "Featured", // 197
				no: "Not Featured", // 196
			},
			tabs: {
				featured: "Featured", // 112
				popular: "Popular", // 113
				newest: "New", // 114
				search: "Search" // 115
			}
		},
		world: {
			hud: {
				world_number: "World {0}"
			}
		},
		messages: {
			positive: {
				course_saved: "Course saved", // 90
				saved: "Changes saved", // 95
				logged_in: "Logged in", // 97
				downloaded: "Level downloaded", // 178, unused
				featured_added: "Added to featured", // 181, unused
				featured_removed: "Deleted from featured", // 182, unused
				reported: "The course has been reported", // 183, unused
			},
			negative: {
				start_obstructed: "You have an object that obstructs the start", // 91
				no_changes: "There are no items to save", // 92
				course_exists: "This course already exists", // 93
				load_failed: "Unable to load course", // 96
				read_failed: "Unable to read course", // 103
				outdated: $"Can't connect / Update {global.game.name}", // 98
				no_internet: "No internet connection", // 99
				timed_out: "Connection timed out", // 173
				data_failed: "Error retrieving data", // 174
				upload_failed: "Couldn't upload the level", // 175
				inappropriate: "Unable to upload this course because#it uses inappropriate language", // 177, unused
				download_failed: "Couldn't download the level", // 179, unused
				already_reported: "You already reported the course", // 184, unused
				self_report: "You can't report your courses", // 185, unused
				unknown: "An error occurred" // 180, 102, unused?????
			}
		}
	},
	zh: {
		disclaimer: {
			title: "免责声明", // 0
			text: "本游戏为同人游戏，#未经任天堂许可，#其中的图像、声音等资源#版权归任天堂所有。" // 1
		},
		calendar: {
			monday: "星期一", // 2
			tuesday: "星期二", // 3
			wednesday: "星期三", // 4
			thursday: "星期四", // 5
			friday: "星期五", // 6
			saturday: "星期六", // 7
			sunday: "今天是星期日，一起来制造吧！", // 8
			christmas: "圣诞快乐！", // 9
			new_year: "新年快乐！" // 10
		},
		pages: {
			main_menu: "主菜单", // new
			level_editor: "创作关卡", // 12
			endless: "马力欧耐力挑战", // 13
			online: "全球关卡", // 14
			coursebot: "关卡机器人", // 15
			world_editor: "创造世界", // new
			worldbot: "世界机器人" // new
		},
		language: "简体中文", // 16
		fields: {
			username: "用户名", // 100
			password: "密码", // 101
			course_name1: "请输入关卡名", // 94
			course_desc: "输入关卡描述", // 200
			course_name2: "关卡的名字", // 88
			description: "关卡说明", // 189, not sure which one to use
		},
		account: {
			username: "用户名", // 17
			login: "登录", // 18
			create: "注册账号" // 188
		},
		login_new: {
			username: "请输入您的用户名（最多20个字符）："
		},
		coursebot: {
			courses_title: "关卡", // 172, duplicate of 108
			no_description: "没有描述" // 190
		},
		worldbot: {
			worlds_title: "超级世界" // new
		},
		buttons: {
			ok: "OK", // 28
			play: "游玩", // 11
			edit: "编辑", // 50
			upload: "发布", // 51
			yes: "是", // 72
			no: "否", // 73
			search: "搜索", // 124
			download: "下载", // 143
			"continue": "继续", // 152
			restart: "重新开始", // 150
			report: "举报", // 153
			erase: "橡皮擦", // 156
			new_game: "新游戏", // 159
			next: "继续", // 160
			exit_course: "离开关卡", // 161
			retry: "重试" // 186
		},
		settings: {
			title: "选项", // 19
			controls: "控制", // 20
			configure: "设置", // 29
			controls_configure: "设置按键", // 187
			language: "语言", // 21
			player: "人物", // 22
			volume: "音量", // 23
			window_size: "窗口大小", // 24
			effects: "特效", // 25
			touch: "虚拟案件", // 26
			sm4j: "经典操作模式", // 27
			on: "启用", // 30
			off: "禁用" // 31
		},
		new_settings: {
			video: {
				title: "视频", // new
				window_scale: "窗口缩放", // new
				shadows: "阴影" // new
			},
			controls: {
				title: "控制" // new
			},
			miscellaneous: {
				title: "其他" // new
			},
			about: {
				title: "关于" // new
			}
		},
		credits: {
			programmers: "程序员", // 32
			sfx: "音乐和音效", // 33
			spriters: "精灵设计师", // New
			animations_fx: "动画和动效", // 34
			fonts: "字体", // 35
			additional: "其他贡献者", // 36
			special_thanks: "特别感谢", // 37
			powered_by: "引擎和资源", // 38
			translators: "翻译", // 170
			and_you: "而你，{0} <3" // new
		},
		autoscroll: {
			none: "无", // 39
			slow: "慢速", // 40
			normal: "中等", // 41
			fast: "快速" // 42
		},
		conditions: {
			tabs: {
				actions: "操作", // 43
				parts: "零件", // 44
				status: "状态" // 45
			},
			no_damage: "在1次也没有受到伤害的状态下通过终点", // 46
			no_land: "在离开地面后不着地的状态下通过终点", // 47
			underwater: "没有离开过水面而通过终点", // 48
			no_coins: "不收集任何金币而通过终点", // 49
			failed: "无法达成终点条件。", // 171
			
		},
		tags: {
			standard: "标准", // 52
			puzzle: "解谜", // 53
			speedrun: "计时挑战", // 54
			autoscroll: "自动卷轴", // 55
			auto: "自动马力欧", // 56
			short: "一次通过", // 57
			multiplayer: "多人对战", // 58
			themed: "机关设计", // 59
			music: "音乐", // 60
			art: "美术", // 61
			technical: "技巧", // 62
			shooter: "射击", // 63
			boss: "对战BOSS", // 64
			singleplayer: "单打" // 65
		},
		editor: {
			clapperboard: {
				play: "游玩",
				edit: "创作"
			},
			categories: {
				terrain: "地形", // 66
				items: "道具", // 67
				enemies: "敌人", // 68
				gizmos: "机关" // 69
			},
			upload: {
				message: "如果不通关，就无法发表。#要进行过关确认吗？", // 71
				clear_check: {
					start: "从起始地点确认！", // 74
					checkpoint: "从中间点确认！" // 75
				},
				please_wait: "请稍后...", // 76
				uploading: "正在发布...", // 77
			},
			tabs: {
				style: "游戏风格", // 80
				theme: "场景类型", // 81
				water_level: "水面的高度", // 154
				lava_level: "熔岩的高度", // 155
				autoscroll: "自动卷轴", // 82
				timer: "计时器", // 83
				condition: "终点条件", // 84
				coursebot: {
					title: "保存 | 读取", // 85
					save: "Save", // 105
					save_as: "Save As", // 104
					load: "Load", // 106
					load_confirm: "如果读取关卡，放置的零件将全部消失。#确定要进行吗？" // 89
				}
			},
			border: {
				erase: "橡皮擦" // 156
			}
		},
		world: {
			hud: {
				world_number: "世界 {0}"
			}
		},
		online: {
			like: "赞!", // 78
			dislike: "不好!", // 79
			loading: "正在读取...", // 107
			pages: {
				courses: "关卡", // 108
				leaderboard: "分类", // 109
				multiplayer: "多人对战", // 110
				endless: "马力欧耐力挑战" // 111, duplicate of 13
			},
			endless: {
				confirm_new_game: "您确定要开始新游戏吗？#你将失去在其他困难上取得的所有进展。" // 201
			},
			level: {
				no_record: "没有人过关", // 145
				clear_rate: "过关率", // 146
			},
			search_fields: {
				course_id: "关卡 ID", // 116
				style: "游戏风格", // 117
				theme: "场景类型", // 118
				difficulty: "难度", // 119
				upload_date: "发表日", // 120
				clear_status: "过关状态", // 121
				rating: "我的评价", // 122
				order_by: "排序", // 123
				course_name: "关卡名", // 148
				maker_name: "工匠名", // 149
				popularity: "人气", // 193
				featured: "精选", // 198
			},
			difficulty: {
				easy: "简单", // 125
				normal: "普通", // 126
				expert: "困难", // 127
				super_expert: "极难" // 128
			},
			date: {
				today: "今天", // 129
				last_2_days: "过去 2 天", // 130
				last_3_days: "过去 3 天", // 131
				last_4_days: "过去 4 天", // 132
				last_5_days: "过去 5 天", // 133
				last_6_days: "过去 6 天", // 134
				last_week: "上一周", // 135
				last_month: "上个月" // 136
			},
			clear_status: {
				cleared: "已过关", // 137
				not_cleared: "未过关" // 138
			},
			rating: {
				liked: "点过 '赞'", // 139
				booed: "点过 '不好'", // 140
			},
			order_by: {
				newest: "正序", // 141
				oldest: "倒序" // 142
			},
			popularity: {
				most: "更流行",  // 192
				least: "不太受欢迎", // 195
			},
			featured: {
				yes: "没有特色", // 197
				no: "没有希望", // 196
			},
			tabs: {
				featured: "期待的关卡", // 112
				popular: "受欢迎的", // 113
				newest: "新关卡", // 114
				search: "搜索" // 115
			}
		},
		messages: {
			positive: {
				course_saved: "关卡已保存。", // 90
				saved: "更改已保存。", // 95
				logged_in: "登录成功。", // 97
				downloaded: "关卡已下载。", // 178, unused
				featured_added: "已加入“期待的关卡”。", // 181, unused
				featured_removed: "已从“期待的关卡”中删除。", // 182, unused
				reported: "关卡已举报。", // 183, unused
			},
			negative: {
				start_obstructed: "无法保存关卡。", // 91
				no_changes: "无法保存空白关卡。", // 92
				course_exists: "关卡已经存在。", // 93
				load_failed: "无法载入关卡。", // 96
				read_failed: "登录成功。", // 103
				outdated: $"登录失败 / 更新 {global.game.name}。", // 98
				no_internet: "无互联网连接。", // 99
				timed_out: "连接超时。", // 173
				data_failed: "连接中止。", // 174
				upload_failed: "无法发布关卡。", // 175
				inappropriate: "无法发布这个关卡，#因为使用了不恰当的用语。", // 177, unused
				download_failed: "无法下载关卡。", // 179, unused
				already_reported: "你已经举报过这个关卡了。", // 184, unused
				self_report: "你不能举报自己的关卡。", // 185, unused
				unknown: "发生错误。" // 180, 102, unused?????
			}
		}
	},
}