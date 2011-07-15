Strict

Class Collections

	Function Copy:Int[](intArray:Int[], length:Int = 0)
		Local newArray:Int[]
		
		if (length = 0) Then
			newArray = intArray.Resize(intArray.Length())
		Else
			newArray = intArray.Resize(length)
		End If

		Return newArray				
	End Function
	
	Function Merge:Int[](intArray1:Int[], intArray2:Int[])
		Local newArray:Int[] = Collections.Copy(intArray1, intArray1.Length() + intArray2.Length())
		
		Local i:Int = intArray1.Length()
		For Local item:Int = EachIn intArray2
			newArray[i] = item
			i+=1
		Next
		
		Return newArray
	End Function
	
	Function Reverse:Int[](intArray:Int[])
		Local newArray:Int[] = New Int[intArray.Length()]
		
		Local i:Int = 0
		For Local j:Int = intArray.Length()-1 Until -1 Step -1
			newArray[i] = intArray[j]
			i+= 1
		Next
		
		Return newArray		
	End Function
	
	Function Swap:Int[](intArray:Int[], index1:Int, index2:Int)
		Local newArray:Int[] = Collections.Copy(intArray)
		
		newArray[index1] = intArray[index2]
		newArray[index2] = intArray[index1]	
		
		Return newArray
	End Function	
	
	Function Implode:String(intArray:Int[], separator:String)
		Local result:String = ""
	
		For Local item:String = EachIn intArray
			result+= item + separator		
		Next
		
		Return result[..result.Length()-separator.Length()]
	End Function

End Class