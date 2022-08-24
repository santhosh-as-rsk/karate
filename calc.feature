Feature: windows calculator

# Background:
#     * robot { window: 'Calculator', fork: 'calc', highlight: true, highlightDuration: 500 }

Scenario:
	
	# * waitUntil('#clearButton')
	* locate('#clearButton').click()
	* click(val_1)
	* click(opt)
	* click(val_2)
	* click('#equalButton')
	* match locate('#CalculatorResults').name == exp_op
