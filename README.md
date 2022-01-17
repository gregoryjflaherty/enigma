## Enigma
Final Project - Mod 1 - BE 2111 - Turing School of Software and Design 

___Class Files___
- enigma.rb      
- shift.rb         
- command_line.rb  

___Modules___
- cryptography.rb      
- producer.rb          

___Runner Files___
- encrypt.rb           
- decrypt.rb          

___Spec Files___
- enigma_spec.rb    
- shift_spec.rb          
- command_line_spec.rb  

___Self Reflection___

- Ultimately I felt like my strengths were in organization and design of the code base. I felt like removing classes that held little purpose were key in creating a program that made sense and flowed appropriately. Most behavior based functions were outsourced to modules where most of the encryption and data manipulation occurred. Classes were constructed that mostly held state, which I believed helped achieved the POROs concept of programming. I also felt like the desired methods were written in least amount of code as no file is longer then 100 lines. Functionality ended up achieving it's desired goal as all functions, output and iterations are as expected (excluding cracking methods). Variable names describe what data is being stored as well as a close correlation to whatever the method achieves. Helper methods were created and implemented to prevent DRY code and to ensure each method focused soley on one individual purpose. Testing resulted in 100% coverage using SimpleCov. Test design needs improvement which is discussed below.   

- Ares of improvement include but are not limited to:
  - deeper understanding of utilizing File I/O 
  - using mocks and stubs for more accurate testing
  - understanding what to test for in areas of uncertainty
  - writing higher test quantities, more edge cases
  - continued improvement using best class/method designs
  - finding a better balance when writing readable code vs concise code
  - more effective preperation, mind-mapping and pseudocoding

___Repository by___

Greg Flaherty || github: gregoryjflaherty
