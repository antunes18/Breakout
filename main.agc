// Project: Breakout 
// Created: 2021-06-09

// show all errors
	SetErrorMode(2)

// set window properties
	SetWindowTitle("Breakout")
	SetWindowSize(1280, 720, 0)
	SetWindowAllowResize(1) // allow the user to resize the window

// set display properties
	SetVirtualResolution (1280, 720) // doesn't have to match the window
	SetSyncRate(60, 0) // 30fps instead of 60 to save battery
	SetScissor(0,0,0,0) // use the maximum available screen space, no black borders
	UseNewDefaultFonts(1) // since version 2.0.22 we can use nicer default fonts

	#include "Carregador.agc"
	#include "MoveJogador.agc"
	#include "Menu.agc"
	#include "Colisoes.agc"
	
	Gosub Carregador

	flagColisao0 = 1
	flagColisao1 = 1
	flagColisao2 = 1
	
	flagColisao3 = 1
	flagColisao4 = 1
	flagColisao5 = 1
	
	flagColisao6 = 1
	flagColisao7 = 1
	flagColisao8 = 1
	
	flagColisao9 = 1
	flagColisao10 = 1
	flagColisao11 = 1
	
	flagColisao12 = 1
	flagColisao13 = 1
	flagColisao14 = 1
	
	flagColisao15 = 1
	flagColisao16 = 1
	flagColisao17 = 1
	
	flagColisao18 = 1
	flagColisao19 = 1
	flagColisao20 = 1
	
	flagColisao21 = 1
	flagColisao22 = 1
	flagColisao23 = 1
	
	flagColisao24 = 1
	flagColisao25 = 1
	flagColisao26 = 1
	
	flagColisao27 = 1
	flagColisao28 = 1
	flagColisao29 = 1
	
	flagColisao30 = 1
	flagColisao31 = 1
	flagColisao32 = 1
	
	pontuacao = 0
	pontuacaoMaisAlta = 0
	gameOver = 1
			
do	
	if GameOver = 1
		Gosub MenuJogo
		pontuacao = 0	
	endif
	
	Gosub MovimentacaoJogador
	
	if pontuacao > pontuacaoMaisAlta
		pontuacaoMaisAlta = pontuacao
	endif
	
	print("Pontuação: "+str(pontuacao)+" / Melhor pontuação: "+str(pontuacaoMaisAlta))
	
	Gosub ColisaoSprites

	Sync()
loop
