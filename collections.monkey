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
	
	Function Reverse:Void(intArray:Int[])
		Local tmpArray:Int[] = Collections.Copy(intArray)
		
		Local i:Int = 0
		For Local j:Int = intArray.Length()-1 Until -1 Step -1
			intArray[i] = tmpArray[j]
			i+= 1
		Next		
	End Function
	
	Function Swap:Void(intArray:Int[], index1:Int, index2:Int)
		Local oldValue1:Int = intArray[index1]
		
		intArray[index1] = intArray[index2]
		intArray[index2] = oldValue1	
	End Function	
	
	Function Implode:String(intArray:Int[], separator:String)
		Local result:String = ""
	
		For Local item:String = EachIn intArray
			result+= item + separator		
		Next
		
		if (separator.Length() > 0)
			Return result[..result.Length()-1]
		Else
			Return result
		End If
	End Function

End Class