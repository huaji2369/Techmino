return{
	fallback=4,
	back="Volver",
	anykey="Pulsa cualquier tecla",
	-- sureQuit="Press again to exit",
	newVersion="¡Gracias por actualizar! Detalles a continuación:",
	httpTimeout="¡Tiempo de espera de conexión agotado!",
	-- newDay="[Anti-addiction] New day, new beginning!",
	-- playedLong="[Anti-addiction] You've been playing quite a bit today. Make sure to take breaks.",
	-- playedTooMuch="[Anti-addiction] You've been playing too much today! You can't play any more.",

	atkModeName={"Al azar","Medallas","KOs","Atacantes"},
	royale_remain="$1 Jugadores Restantes",
	cmb={nil,"Combo de 1","Combo de 2","Combo de 3","Combo de 4","Combo de 5","Combo de 6","Combo de 7","Combo de 8","Combo de 9","¡Combo de 10!","¡Combo de 11!","¡Combo de 12!","¡Combo de 13!","¡Combo de 14!","¡Combo de 15!","¡Combo de 16!","¡Combo de 17!","¡Combo de 18!","¡Combo de 19!","MEGACOMBO"},
	spin="-spin ",
	clear={"Single","Doble","Triple","Techrash","Pentacrash","Hexacrash"},
	mini="Mini",b2b="B2B ",b3b="B2B2B ",
	PC="Perfect Clear",HPC="Half Clear",
	hold="Reserva",next="Siguiente",
	replaying="[Replay]",

	stage="Nivel $1",
	great="¡Genial!",
	awesome="¡Fantástico!",
	almost="¡Casi!",
	continue="¡Continúa!",
	maxspeed="¡Máxima Velocidad!",
	speedup="¡Más rápido!",
	missionFailed="Misión Fallida",

	-- speedLV="speed level",
	-- line="Lines",atk="Attack",eff="Efficiency",
	-- rpm="RPM",tsd="TSD",
	-- grade="Grade",techrash="Techrash",
	-- wave="Wave",nextWave="Next",
	-- combo="Combo",maxcmb="Max Combo",
	-- pc="Perfect Clear",ko="KO",

	win="Victoria",
	finish="Fin",
	gameover="Fin del Juego",
	pause="Pausa",
	pauseCount="Veces pausadas",
	finesse_ap="Finesse Perfecto",
	finesse_fc="Full Combo",

	page="Página:",

	ai_fixed="La IA no es compatible con secuencias de piezas prefijadas.",
	ai_prebag="La IA no es compatible con secuencias de piezas personalizadas.",
	ai_mission="La IA no es compatible con misiones personalizadas.",
	settingSaved="Cambios guardados",
	-- saveDone="Data Saved",
	-- saveError="Failed to save:",
	-- loadError="Failed to read:",
	switchSpawnSFX="Habilita los sonidos de aparición de las piezas ;)",
	getRank="Rango obtenido:",

	needRestart="Reinicia Techmino para que los cambios tengan efecto.",

	-- exportSuccess="Export successfully",
	-- importSuccess="Import successfully",
	dataCorrupted="Los datos están corruptos.",

	VKTchW="Sens. al toque",
	VKOrgW="Sens. al origen",
	VKCurW="Sens. Cur. Pos.",

	noScore="Sin puntajes aún.",
	highScore="Mejores puntajes",
	newRecord="¡Nuevo Récord!",

	getNoticeFail="Error al buscar novedades.",
	getVersionFail="Error al buscar nuevas versiones.",
	oldVersion="¡Está disponible la nueva versión $1!",

	-- httpCode="Http status code",
	-- jsonError="Json error",

	noUsername="Por favor ingresa un nombre de usuario",

	-- wrongEmail="Wrong email address",
	noPassword="Por favor ingresa una contraseña",
	diffPassword="Las contraseñas no coinciden",
	registerSuccessed="¡Registro exitoso!",
	registerFailed="Registro fallido.",
	-- loginSuccessed="Successfully logged in!",
	-- loginFailed="Login failed",
	-- accessSuccessed="Successfully authorized!",
	-- accessFailed="Authorization failed",
	-- wsSuccessed="WebSocket: connected",
	-- wsFailed="WebSocket: connection failed",
	-- wsDisconnected="WebSocket: disconnected",
	-- wsNoConn="WebSocket: you are not connected",
	-- wsClose="WebSocket closed: ",
	-- waitNetTask="Connecting, please wait",

	-- createRoomTooFast="Create room too fast!",
	-- createRoomSuccessed="Room successfully created!",
	-- joinRoom="joined the room.",
	-- leaveRoom="left the room.",
	-- notReady="Waiting",
	-- beReady="Ready",
	-- champion="$1 won",
	-- chatRemain="Online: ",
	-- chatStart="------Beginning of log------",
	-- chatHistory="------New messages below------",

	-- noRooms="No Rooms Now",
	-- roomsCreateFailed="Failed to create room",
	-- roomsFetchFailed="Failed to fetch rooms",

	errorMsg="Ha ocurrido un error y Techmino necesita reiniciarse.\nSe creó un registro de error, puedes enviarlo al autor.",

	-- modInstruction="",
	-- modInfo={},--See lang_en.lua
	pauseStat={
		"Tiempo:",
		"Tecla/Rot./Reserva:",
		"Piezas:",
		"Altura/Limpiado:",
		"Ataque Enviado:",
		"Ataque Recibido:",
		"Líneas Limpiadas:",
		"Spins:",
		"B2B/B3B/PC/HPC:",
		"Finesse:",
	},
	radar={"DEF","OFF","ATK","SEND","SPD","DIG"},
	radarData={
		"D'PM",
		"ADPM",
		"APM",
		"SPM",
		"L'PM",
		"DPM",
	},
	stat={
		"Veces Iniciado:",
		"Veces Jugado:",
		"Tiempo de Juego:",
		"Tecla/Rot./Reserva:",
		"Bloq./Lín./Atq.:",
		"Rec./Off./Sub.:",
		"Limp./Atq. Limp.:",
		"Effic./Eff.Limp.:",
		"Slam/Gr.Slam:",
		"PC/HPC:",
		"Err.Fns./RatioFns:",
	},
	help={
		"Ahora que sabes jugar a este juego, no necesitas ayuda, ¿o sí?",
		"Este es simplemente un juego de puzzle ordinario, no pienses de él como un juego promedio.",
		"Está inspirado en otros como TO/C2/KoS/TGM3/JS.",
		"",
		"Creado con LOVE2D",
		"Puedes reportar errores o enviar sugerencias al grupo de testeo del autor o por email ~",
		"Descarga disponible únicamente vía el grupo de testeo y discord.gg/f9pUvkh",
		"Descargas desde otros sitios pueden contener malware/viruses, y en smartphones sólo requiere permisos de internet y vibración.",
		"El autor no se responabiliza por daños ocasionados debido a modificaciones del juego.",
		"Por favor descarga las últimas versiones desde los sitios oficiales. El juego es gratuito",
	},
	staff={
		"Autor:MrZ  Email: 1046101471@qq.com",
		"Creado con LOVE2D",
		"",
		"Programación: MrZ, Particle_G, [T9972, FinnTenzor]",
		"Artistas: MrZ, ScF, [Gnyar, T0722]",
		"Música: MrZ, [T0722]",
		"Voces/Sonidos: Miya, Naki, MrZ  Performance: 模电, HBM",
		"Testeo: 思竣  Performance: 模电, HBM",
		"Traducción: User670, MattMayuga, Mizu, Mr.Faq, ScF",
		"",
		"Agradecimientos:",
		"User670, Big_True, Flyz, Farter,",
		"蕴空之灵, Teatube, [Todo el Staff de Testeo]",
	},
	used=[[
	Herramientas utilizadas:
		Beepbox
		GFIE
		Goldwave
	Librerías usadas:
		Cold_Clear [MinusKelvin]
		json.lua [rxi]
		profile.lua [itraykov]
		simple-love-lights [dylhunn]
	]],
	support="Apoyen al Autor",
	group="Grupo Oficial de QQ (si no lo hackean) : 913154753",
	WidgetText={
		main={
			-- offline="Single",
			-- online="Multi",
			custom="Person.",
			stat="Estadísticas",
			setting="Opciones",
			qplay="P. Rápida",
			lang="言/A",
			help="Ayuda",
			quit="Salir",
			music="Música",
			sound="Sala de SE",
		},
		main_simple={
			sprint="Sprint",
			marathon="Maratón",
		},
		mode={
			-- mod="Mods (F1)",
			start="Empezar",
		},
		mod={
			-- title="Mods",
			-- reset="Reset (tab)",
			-- unranked="Unranked",
		},
		pause={
			setting="Opciones (S)",
			replay=	"Grabación (P)",
			-- save="Save (O)",
			resume=	"Resumir (esc)",
			restart="Reiniciar (R)",
			quit=	"Finalizar (Q)",
		},
		net_menu={
			-- ffa="FFA",
			-- rooms="Rooms",
			-- chat="Chat",
		},
		net_rooms={
			-- fresh="Fresh",
			-- new="New room",
			-- join="Join",
			up="↑",
			down="↓",
		},
		net_game={
			-- ready="Ready",
		},
		net_chat={
			-- send="Send",
		},
		setting_game={
			title="Ajustes del Juego",
			graphic="←Video",
			sound="Sonido→",

			ctrl="Sensibilidad",
			key="Teclas",
			touch="Controles Táctiles",
			reTime="Retraso de Inicio",
			-- RS="Rotation System",
			layout="Diseño",
			autoPause="Pausar cuando la ventana no está enfocada",
			swap="Combinación de Teclas (Cambiar Modo de Ataque)",
			fine="Sonido de Error de Finesse",
			appLock="Bloqueo de App (Contraseña: 626)",
			-- simpMode="Simple mode",
			calc="Bloqueo de App",
		},
		setting_video={
			title="Ajustes de Video",
			sound="←Sonido",
			game="Juego→",

			block="Dibujar Bloques",
			smooth="Caída Fluida",
			upEdge="3D Bloques",
			bagLine="Línea de Bag de Pzas.",

			ghost="Fantasma",
			grid="Grilla",
			center="Centrar",

			lockFX="FX Vis. de Bloqueo",
			dropFX="FX Vis. de Caída",
			moveFX="FX Vis. de Movim.",
			clearFX="FX Vis. de Limpieza",
			-- splashFX="Splash FX Level",
			shakeFX="Bamboleo del Tablero",
			atkFX="FX Vis. de Ataque",
			frame="Ratio de FPSs",

			text="Texto de Acciones",
			score="Puntaje en Pantalla",
			warn="Alerta de Peligro",
			highCam="Cám. Vista Aérea",
			nextPos="Ver Spawn de Pza. Sig.",
			fullscreen="Pant. Completa",
			bg="Fondo",
			power="Inf. de Batería",
		},
		setting_sound={
			title="Ajustes de Sonido",
			game="←Juego",
			graphic="Video→",

			sfx="SFX",
			spawn="Spawn de Pzas.",
			warn="Alerta de Peligro",
			bgm="BGM",
			stereo="Estéreo",
			vib="Vibración",
			voc="Voces",
		},
		setting_control={
			title="Ajustes de Controles",
			preview="Ejemplo",

			das="DAS",arr="ARR",-- dascut="DAS cut",
			sddas="DAS de C. Ráp.",sdarr="ARR de C. Rápida",
			ihs="Resv. Inicial",
			irs="Rot. Inicial",
			ims="Mov. Inicial",
			reset="Reinicio",
		},
		setting_key={
			a1="Mover a Izq.",
			a2="Mover a Der.",
			a3="Rotar Der.",
			a4="Rotar Izq.",
			a5="Rotar 180°",
			a6="Caída Instantánea",
			a7="Caída Rápida",
			a8="Reserva",
			a9="Función1",
			a10="Función2",
			a11="Izq. Instant.",
			a12="Der. Instant.",
			a13="Sonic Drop",
			a14="Abajo 1",
			a15="Abajo 4",
			a16="Abajo 10",
			a17="Caída a Izq.",
			a18="Caída a Der.",
			a19="Zangi a Izq.",
			a20="Zangi a Der.",
			restart="Reiniciar",
		},
		setting_skin={
			title="Ajustes de Texturas",
			skinR="Color por def.",
			faceR="Direc. por def.",
		},
		setting_touch={
			default="Por Defecto",
			snap="Snap",
			option="Opciones",
			size="Tamaño",
		},
		setting_touchSwitch={
			b1=	"Mover Izq.:",b2="Mover Der.:",b3="Rotar Der.:",b4="Rotar Izq.:",
			b5=	"Rotar 180°:",b6="Caída Inst.:",b7="Caída Ráp.:",b8="Reserva:",
			b9=	"Función1:",b10="Función2:",b11="Izq. Instant.:",b12="Der. Instant.:",
			b13="Sonic Drop:",b14="Abajo 1:",b15="Abajo 4:",b16="Abajo 10:",
			b17="Soltar a Izq.:",b18="Soltar a Der.:",b19="Zangi a Izq.:",b20="Zangi a Der.:",
			norm="Normal",
			pro="Profesional",
			hide="Mostrar Tec. Virtual",
			track="Música Autom.",
			sfx="SFX",
			vib="Vibr.",
			icon="Ícono",
			tkset="Ajustes de Canción",
			alpha="Alpha",
		},
		setting_trackSetting={
			VKDodge="Autoskip",
		},
		customGame={
			title="Juego Personalizado",
			subTitle="Básico",
			defSeq="Sec. por defecto",
			noMsn="Sin misión",

			drop="Retraso de Caída",
			lock="Retraso de Bloqueo",
			wait="Retraso de Spawneo",
			fall="Retraso de Línea",

			bg="Fondo",
			bgm="Música",

			copy="Copiar Campo+Sec.+Mis.",
			paste="Pegar Campo+Sec.+Mis.",
			clear="Inicio-Fin",
			puzzle="Inicio-Puzzle",

			advance="Más opciones (A)",
			-- mod="Mods",
			field="Editar Tablero (F)",
			sequence="Editar Secuencia (S)",
			mission="Editar Misiones (M)",
		},
		custom_advance={
			title="Juego Personalizado",
			subTitle="Avanzado",

			nextCount="Siguiente",
			holdCount="Reserva",
			-- infHold="Hold Único",
			block="Dibujar Bloques",
			ghost="Fantasma",
			center="Centrar",
			upEdge="3D Bloques",
			bagLine="Línea de Bag de Pzas.",
			highCam="Vista Aérea",
			nextPos="Nro. de Pzas. Siguientes",
			bone="Bone Block",

			mindas="DAS Mínimo",
			minarr="ARR Mínimo",
			minsdarr="SDARR Mínimo",
			noTele="Sin Teleport",
			-- RS="Rotation System",
			ospin="O-Spin",
			target="Objetivo",
			visible="Visibilidad",
			freshLimit="Límite de Reinicio LD",
			easyFresh="Reinicio de Bloqueo Normal",
			fineKill="100% Finesse",
			-- b2bKill="No B2B break",
			opponent="Oponente",
			life="Vida",
			pushSpeed="Velocidad de Basura",
		},
		custom_field={
			title="Juego Personalizado",

			subTitle="Tablero",

			any="Borrar",
			space="×",
			pushLine="Añadir Línea (K)",
			delLine="Borrar Línea (L)",

			copy="Copiar",
			paste="Pegar",
			clear="Limpiar",
			demo="No Mostrar X",

			-- newPage="New Page(N)",
			-- delPage="Del Page(M)",
			-- prevPage="Prev Page",
			-- nextPage="Next Page",
		},
		custom_sequence={
			title="Juego Personalizado",
			subTitle="Secuencia",
			sequence="Secuencia",
			-- reset="Reset",
			-- rnd="Rand",
			copy="Copiar",
			paste="Pegar",
		},
		custom_mission={
			title="Juego Personalizado",
			subTitle="Misiones",

			copy="Copiar",
			paste="Pegar",
			mission="Forzar misión",
		},
		help={
			manual="Manual",
			dict="Little Z",
			staff="Staff",
			his="Hist. de Acts.",
			qq="QQ del Autor",
		},
		dict={
			title="TetroDictionary",
			keyboard="Teclado",
			link="Abrir URL",
			up="↑",
			down="↓",
		},
		stat={
			path="Abrir carpeta del juego",
			-- save="Data Management",
		},
		music={
			title="Sala de Música",
			arrow="→",
			now="Reproduciendo:",

			bgm="BGM",
			up="↑",
			play="Reprod.",
			down="↓",
		},
		login={
			title="Entrar",
			register="Registrarse",
			email="Correo Elec.",
			password="Contraseña",
			login="Entrar",
		},
		register={
			title="Registrarse",
			login="Entrar",
			username="Nombre de Usuario",
			email="Correo Elec.",
			password="Contraseña",
			password2="Repetir Contr.",
		},
		account={
			title="Cuenta",
		},
		sound={
			title="Sala de SE",
			sfx="SFX",
			voc="Voces",

			-- move="Move",
			-- lock="Lock",
			-- drop="Drop",
			-- fall="Fall",
			-- rotate="Rotate",
			-- rotatekick="Rotatekick",
			-- hold="Hold",
			-- prerotate="Prerotate",
			-- prehold="Prehold",

			_1="Single",
			_2="Doble",
			_3="Triple",
			_4="Techrash",
		},
		mg_15p={
			reset="Mezclar",
			color="Color",
			blind="A ciegas",
			slide="Mover",
			pathVis="Mostrar Movs.",
			revKB="Deshacer",
		},
		mg_schulteG={
			reset="Reiniciar",
			rank="Tamaño",
			blind="A ciegas",
			disappear="No mostrar",
			tapFX="Sonido al pulsar",
		},
		mg_pong={
			reset="Reiniciar",
		},
		mg_AtoZ={
			-- level="Level",
			-- keyboard="Keyboard",
			reset="Reiniciar",
		},
		mg_2048={
			reset="Reiniciar",
			blind="A ciegas",
			-- tapControl="Tap control",
			-- skip="Skip Round",
		},
		mg_ten={
			reset="Reiniciar",
			next="Siguiente",
			blind="A ciegas",
		},
		mg_dtw={
			reset="Reiniciar",
			-- mode="Mode",
		},
		savedata={
			-- exportUnlock="Export Unlock",
			-- exportData="Export Data",
			-- exportSetting="Export Setting",
			-- exportVK="Export VK",

			-- importUnlock="Import Unlock",
			-- importData="Import Data",
			-- importSetting="Import Setting",
			-- importVK="Import VK",

			reset="¿Reiniciar?",
			resetUnlock="Reiniciar rangos",
			-- resetRecord="Reset records",
			resetData="Reiniciar datos",
		},
	},
	modes={
		["sprint_10l"]=			{"Sprint",			"10L",			"¡Limpia 10 líneas!"},
		["sprint_20l"]=			{"Sprint",			"20L",			"¡Limpia 20 líneas!"},
		["sprint_40l"]=			{"Sprint",			"40L",			"¡Limpia 40 líneas!"},
		["sprint_100l"]=		{"Sprint",			"100L",			"¡Limpia 100 líneas!"},
		["sprint_400l"]=		{"Sprint",			"400L",			"¡Limpia 400 líneas!"},
		["sprint_1000l"]=		{"Sprint",			"1000L",		"¡Limpia 1000 líneas!"},
		["sprintPenta"]=		{"Sprint",			"Pentominos",	"¡Limpia 40 líneas con los 18 pentominos distintos!"},
		["sprintMPH"]=			{"Sprint",			"MPH",			"Memoryless (sin memoria)\nPreviewless (sin pzas. siguientes)\nHoldless (sin reserva)."},
		["dig_10l"]=			{"Queso",			"10L",			"Limpia 10 líneas de queso."},
		["dig_40l"]=			{"Queso",			"40L",			"Limpia 40 líneas de queso."},
		["dig_100l"]=			{"Queso",			"100L",			"Limpia 100 líneas de queso."},
		["dig_400l"]=			{"Queso",			"400L",			"Limpia 400 líneas de queso."},
		["dig_1000l"]=			{"Queso",			"1000L",		"Limpia 1000 líneas de queso."},
		["drought_n"]=			{"Sequía",			"100L",			"¡Sin piezas I!"},
		["drought_l"]=			{"Sequía",			"100L",			"Guat de foc..."},
		["marathon_n"]=			{"Maratón",			"Normal",		"Maratón de 200 líneas con velocidad en aumento."},
		["marathon_h"]=			{"Maratón",			"Difícil",		"Maratón de 200 líneas a velocidad máxima."},
		["solo_e"]=				{"VS.",				"Fácil",		"¡Derrota a la CPU!"},
		["solo_n"]=				{"VS.",				"Normal",		"¡Derrota a la CPU!"},
		["solo_h"]=				{"VS.",				"Difícil",		"¡Derrota a la CPU!"},
		["solo_l"]=				{"VS.",				"Lunático",		"¡Derrota a la CPU!"},
		["solo_u"]=				{"VS.",				"Supremo",		"¡Derrota a la CPU!"},
		["techmino49_e"]=		{"Tech 49",			"Fácil",		"Batalla de 49 jugadores. ¡El último en pie gana!"},
		["techmino49_h"]=		{"Tech 49",			"Difícil",		"Batalla de 49 jugadores. ¡El último en pie gana!"},
		["techmino49_u"]=		{"Tech 49",			"Supremo",		"Batalla de 49 jugadores. ¡El último en pie gana!"},
		["techmino99_e"]=		{"Tech 99",			"Fácil",		"Batalla de 99 jugadores. ¡El último en pie gana!"},
		["techmino99_h"]=		{"Tech 99",			"Difícil",		"Batalla de 99 jugadores. ¡El último en pie gana!"},
		["techmino99_u"]=		{"Tech 99",			"Supremo",		"Batalla de 99 jugadores. ¡El último en pie gana!"},
		["round_e"]=			{"Por Turnos",		"Fácil",		"Modo ajedrez."},
		["round_n"]=			{"Por Turnos",		"Normal",		"Modo ajedrez."},
		["round_h"]=			{"Por Turnos",		"Difícil",		"Modo ajedrez."},
		["round_l"]=			{"Por Turnos",		"Lunático",		"Modo ajedrez."},
		["round_u"]=			{"Por Turnos",		"Supremo",		"Modo ajedrez."},
		["master_beginner"]=	{"Master",			"Lunático",		"Para principiantes en 20G"},
		["master_advance"]=		{"Master",			"Supremo",		"¡Desafío profesional de 20G!"},
		["master_final"]=		{"Master",			"FINAL",		"El verdadero 20G Supremo: el final es inalcanzable."},
		["GM"]=					{"GrandMaster",		"GM",			"Para ser un gran maestro, acepta este desafío"},
		-- ["rhythm_e"]=			{"Rhythm",			"EASY",			"200-line low-bpm rhythm marathon."},
		-- ["rhythm_h"]=			{"Rhythm",			"HARD",			"200-line medium-bpm rhythm marathon"},
		-- ["rhythm_u"]=			{"Rhythm",			"ULTIMATE",		"200-line high-bpm rhythm marathon."},
		["blind_e"]=			{"A Ciegas",		"Parcial",		"Para novatos."},
		["blind_n"]=			{"A Ciegas",		"Total",		"Para jugadores intermedios."},
		["blind_h"]=			{"A Ciegas",		"Inmediato",	"Para jugadores experimentados"},
		["blind_l"]=			{"A Ciegas",		"Inmediato+",	"Para profesionales."},
		["blind_u"]=			{"A Ciegas",		"?",			"¿Estás preparado?"},
		["blind_wtf"]=			{"A Ciegas",		"Guat de Foc",	"No, no lo estás."},
		["classic_fast"]=		{"Clásico",			"CTWC",			"Modo clásico con alta velocidad."},
		["survivor_e"]=			{"Supervivencia",	"Fácil",		"¿Cuánto tiempo podrás sobrevivir?"},
		["survivor_n"]=			{"Supervivencia",	"Normal",		"¿Cuánto tiempo podrás sobrevivir?"},
		["survivor_h"]=			{"Supervivencia",	"Difícil",		"¿Cuánto tiempo podrás sobrevivir?"},
		["survivor_l"]=			{"Supervivencia",	"Lunático",		"¿Cuánto tiempo podrás sobrevivir?"},
		["survivor_u"]=			{"Supervivencia",	"Supremo",		"¿Cuánto tiempo podrás sobrevivir?"},
		["attacker_h"]=			{"Atacante",		"Difícil",		"¡Practica la ofensiva!"},
		["attacker_u"]=			{"Atacante",		"Supremo",		"¡Practica la ofensiva!"},
		["defender_n"]=			{"Defensor",		"Normal",		"¡Practica la defensa!"},
		["defender_l"]=			{"Defensor",		"Lunático",		"¡Practica la defensa!"},
		["dig_h"]=				{"Downstack",		"Difícil",		"¡Practica el downstackeo!"},
		["dig_u"]=				{"Downstack",		"Supremo",		"¡Practica el downstackeo!"},
		["bigbang"]=			{"Big Bang",		"Fácil",		"¡Tutorial de All-spins!\n[No finalizado]"},
		["c4wtrain_n"]=			{"Entrenar C4W",	"Normal",		"Combos infinitos."},
		["c4wtrain_l"]=			{"Entrenar C4W",	"Lunático",		"Combos infinitos."},
		["pctrain_n"]=			{"Entrenar PC",		"Normal",		"Modo sencillo para practicar Perfect Clears."},
		["pctrain_l"]=			{"Entrenar PC",		"Lunático",		"Modo duro para practicar Perfect Clears."},
		["pc_n"]=				{"Desafío de PCs",	"Normal",		"¡Consigue los PCs que puedas en 100 líneas!"},
		["pc_h"]=				{"Desafío de PCs",	"Difícil",		"¡Consigue los PCs que puedas en 100 líneas!"},
		["pc_l"]=				{"Desafío de PCs",	"Lunático",		"¡Consigue los PCs que puedas en 100 líneas!"},
		["tech_n"]=				{"Tech",			"Normal",		"¡Mantén el B2B!"},
		["tech_n_plus"]=		{"Tech",			"Normal+",		"¡Sólo se permiten Spins y PCs!"},
		["tech_h"]=				{"Tech",			"Difícil",		"¡Mantén el B2B!"},
		["tech_h_plus"]=		{"Tech",			"Difícil+",		"¡Sólo se permiten Spins y PCs!"},
		["tech_l"]=				{"Tech",			"Lunático",		"¡Mantén el B2B!"},
		["tech_l_plus"]=		{"Tech",			"Lunático+",	"¡Sólo se permiten Spins y PCs!"},
		["tech_finesse"]=		{"Tech",			"Finesse",		"¡No cometas errores de Finesse!"},
		["tech_finesse_f"]=		{"Tech",			"Finesse+",		"Sin errores de finesse, ¡pero tampoco clears normales!"},
		["tsd_e"]=				{"Desafío de TSD",	"Fácil",		"¡Sólo se permiten T-Spin Dobles!"},
		["tsd_h"]=				{"Desafío de TSD",	"Difícil",		"¡Sólo se permiten T-Spin Dobles!"},
		["tsd_u"]=				{"Desafío de TSD",	"Supremo",		"¡Sólo se permiten T-Spin Dobles!"},
		["zen"]=				{"Zen",				"200L",			"200 líneas sin límite de tiempo."},
		["ultra"]=				{"Ultra",			"Extra",		"¡Consigue el mayor puntaje posible en 2 minutos!"},
		["infinite"]=			{"Infinito",		"",				"Modo Sandbox."},
		["infinite_dig"]=		{"Infinito: Queso",	"",				"Limpia, limpia, más limpia que tú."},
		["sprintFix"]=			{"Sprint",			"Sin mover a Izq./Der."},
		["sprintLock"]=			{"Sprint",			"Sin rotar"},
		["marathon_bfmax"]=		{"Maratón",			"Supremo"},
		["custom_clear"]=		{"Personalizado",	"Normal"},
		["custom_puzzle"]=		{"Personalizado",	"Puzzle"},
	},
}