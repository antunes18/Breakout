MenuJogo:

// Título do jogo
	titulo = CreateText("Breakout!")
	SetTextSize(titulo, 100)
	SetTextPosition(titulo, (1280-GetTextTotalWidth(titulo))/2, 50)
	
// Jogar / Play
	instrucao = CreateText("Clique com o mouse em qualquer canto da tela para jogar!")
	SetTextSize(instrucao, 50)
	SetTextPosition(instrucao, (1280-GetTextTotalWidth(instrucao))/2, 360)

	Gosub EsconderSprites
	Gosub MostrarMenu
	
	if pontuacaoMaisAlta = 660 or contadorColisao = 31
		SetTextVisible(instrucao, 0)
	endif
	
	repeat 
		sync()
	until GetPointerPressed() = 1
	
	gameOver = 0
	
	gosub MostrarSprites
	gosub EsconderMenu
	
Return

EsconderSprites:
	for i = 1 to 35
		SetSpriteVisible(i, 0)
	next i
Return

MostrarSprites:
	for i = 1 to 35
		SetSpriteVisible(i, 1)
	next i
		
	SetSpritePhysicsRestitution(2, 100.0)
	SetSpritePosition(2, 512, 600)
Return

EsconderMenu:
	SetTextVisible(titulo, 0)
	SetTextVisible(instrucao, 0)
	StopMusic()
	
	music1 = LoadMusic("cant-stop-coming.mp3")
	PlayMusic(music1)
	SetMusicFileVolume(music1, 15)
Return

MostrarMenu:
	SetTextVisible(titulo, 1)
	SetTextVisible(instrucao, 1)
	music2 = LoadMusic("menu.mp3")
	SetMusicFileVolume(music2, 15)
	PlayMusic(music2)
Return
