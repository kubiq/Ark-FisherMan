; ----------------------------
; Author: Spencer j Potts
; Game: Ark: Survival Evolved
; Description: 
; Date:
; Github: spencerjpotts
; 
; ----------------------------
;;F6 = Break Script
F6::
	i := 1
	return

;;F5 = Run Script "F5"
F5::
	i 			:= 0
	color 		 = 0xFFFFFF
	speed 		 = 150

RelWidth(x)
{
    return Ceil(A_ScreenWidth * (x / 1920))
}

RelHeight(y)
{
    return Ceil(A_ScreenHeight * (y / 1080))
}

while ( %i% = 0 ) {
	
	;;Auto Recast Rod
	PixelSearch, RecastPx, RecastPy, 0, 0, A_ScreenWidth/4, A_ScreenHeight/4, 0x7FFD03, 3, Fast ;
       	if (ErrorLevel = 0)
    	{
        	Sleep, 2100
        	MouseClick, left
    	}
    
	;;A
	PixelSearch Px, Py, RelWidth(1162), RelHeight(970), RelWidth(1162), RelHeight(970), color, 3, Fast
	if (ErrorLevel = 0)
	{	
    	;;WinActivate, ARK: Survival Evolved
		Send, a
		Sleep, speed
	}

	;;z
	PixelSearch Px, Py, RelWidth(1158), RelHeight(973), RelWidth(1158), RelHeight(973), color, 3, Fast
	if (ErrorLevel = 0)
	{	
    	;;WinActivate, ARK: Survival Evolved
		Send, z
		Sleep, speed
	}

	;;q
	PixelSearch Px, Py, RelWidth(1181), RelHeight(1016), RelWidth(1181), RelHeight(1016), color, 3, Fast
	if (ErrorLevel = 0)
	{	
    	;;WinActivate, ARK: Survival Evolved
		Send, q
		Sleep, speed
	}

	;;w
	PixelSearch Px, Py, RelWidth(1113), RelHeight(868), RelWidth(1113), RelHeight(868), color, 3, Fast
	if (ErrorLevel = 0)
	{	
    	;;WinActivate, ARK: Survival Evolved
		Send, w
		Sleep, speed
	}
		
	;;x
	PixelSearch Px, Py, RelWidth(1167), RelHeight(972), RelWidth(1167), RelHeight(972), color, 3, Fast
	if (ErrorLevel = 0)
	{	
    	;;WinActivate, ARK: Survival Evolved
		Send, x
		Sleep, speed
	}

	;;d
	PixelSearch Px, Py, RelWidth(1192), RelHeight(906), RelWidth(1192), RelHeight(906), color, 3, Fast
	if (ErrorLevel = 0)
	{	
    	;;WinActivate, ARK: Survival Evolved
		Send, d
		Sleep, speed
	}


	;;BEGIN PROCESS OF ELIMINATION TO FIND E, S, C
		
	;;E
	PixelSearch Px, Py, RelWidth(1186), RelHeight(998), RelWidth(1186), RelHeight(998), color, 3, Fast

	PixelSearch PxA, PyA, RelWidth(1162), RelHeight(970), RelWidth(1162), RelHeight(970), color, 3, Fast	;;a
	PixelSearch PxZ, PyZ, RelWidth(1158), RelHeight(973), RelWidth(1158), RelHeight(973), color, 3, Fast	;;z
	PixelSearch PxW, PyW, RelWidth(1113), RelHeight(868), RelWidth(1113), RelHeight(868), color, 3, Fast	;;w
	PixelSearch PxX, PyX, RelWidth(1167), RelHeight(972), RelWidth(1167), RelHeight(972), color, 3, Fast	;;x
	PixelSearch PxD, PyD, RelWidth(1192), RelHeight(906), RelWidth(1192), RelHeight(906), color, 3, Fast	;;d

	if ( Px && Py ) && (!PxA && !PyA) && (!PxZ && !PyZ) && (!PxW && !PyW) && (!PxX && !PyX) && (!PxD && !PyD) {

		Send, e
		Sleep, speed
	}

	;;S
	PixelSearch Px, Py, RelWidth(1161), RelHeight(917), RelWidth(1161), RelHeight(917), color, 3, Fast

	PixelSearch PxZ, PyZ, RelWidth(1158), RelHeight(973), RelWidth(1158), RelHeight(973), color, 3, Fast	;;z
	PixelSearch PxW, PyW, RelWidth(1113), RelHeight(868), RelWidth(1113), RelHeight(868), color, 3, Fast	;;w
	PixelSearch PxX, PyX, RelWidth(1167), RelHeight(972), RelWidth(1167), RelHeight(972), color, 3, Fast	;;x


	if ( Px && Py ) && (!PxZ && !PyZ) && (!PxW && !PyW) && (!PxX && !PyX) {

		Send, s
		Sleep, speed
	}

	;;C
	PixelSearch Px, Py, RelWidth(1135), RelHeight(918), RelWidth(1135), RelHeight(918), color, 3, Fast

	PixelSearch PxQ, PyQ, RelWidth(1181), RelHeight(1016), RelWidth(1181), RelHeight(1016), color, 3, Fast ;;q
	PixelSearch PxD, PyD, RelWidth(1192), RelHeight(906), RelWidth(1192), RelHeight(906), color, 3, Fast	;;d

	if ( Px && Py )  && (!PxQ && !PyQ) && (!PxD && !PyD) {

		Send, c
		Sleep, speed
	}

}
return
