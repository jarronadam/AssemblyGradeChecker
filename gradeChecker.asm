/********************** 
/ Jarron Douglas  
/ Write a documented assembly language program for the basic computer that determines if a student receives a 	/satisfactory, caution, or unsatisfactory midterm report. 
/********************** 

Address (in hex)	Label		Symbolic Code	Comment	 

ORG 10				 

10	Satis	    CLA			/Clear AC 

11				LDA S			/Load “80” into AC 

12				CMA			/Complement AC 

13				INC			/ Inc to complete 2’s complement 

14				ADD Score I		/Add our current score 

15				SNA			/Skip if the AC is negetive 

16				BUN Store		/Jump to our Store method	 

17				BUN Cauti		/method jump to check if grade is cautions 

 

18	Cauti,	    CLA			/Clear AC 

19				LDA C			/Load “70” into AC 

1A				CMA			/Complement AC 

1B				INC			/Inc to complete 2’s complement 

1C				ADD Score I		/Add current score 

1D				SNA			/Skip if the AC is negetive 

1E				BUN Store		/Jump to store method 

1F				BUN Unsati		/If still negetive, check for unsatifactory grade 

 

20	Unsati,		CLA			/Clear Ac 

21				INP			/Input U in AC 

22				STA Result I		/Store in current students midterm report 

23				ISZ Score		/Increment Score pointer 

24				ISZ num		/Increment our counter 

25				ISZ Result		/Increment Result pointer 

26				BUN Satis		/Jump back to test for satifactory grade 

 

 

27	Store		CLA			/Clear AC 

28				INP			/INP apporiate grade in AC 

29				STA Result I		/Store in current students midterm report  

30				ISZ Score		/Increment Score pointer 

31				ISZ num		/Increment our counter 

32				ISZ Result		/Incremenet Result pointer 

33				BUN Satis		/Jump back to test for satifactory grade 

 

34				HLT			/Halt Computer 

 

ORG 100 

100	Score		DEC 53			/Student 1 

101				DEC 95				/Student 2 

102				DEC 82				/Student 3 

103				DEC 75				/Student 4 

104				DEC 97				/Student 5 

 

ORG 110 

110	Result		HEX 0			/Student 1 

111				HEX 0				/Student 2 

112				HEX 0				/Student 3 

113				HEX 0				/Student 4 

114				HEX 0				/Student 5 

 

115		S		DEC 80				/Value for satifactory grade 

116		C		DEC 70				/Value for cautions grade 

117		num		DEC -5				/Our counter 

 