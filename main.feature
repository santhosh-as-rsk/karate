Feature: which makes a 'call' to another re-usable feature

Background:
    * configure afterFeature = function(){ karate.call('after-scenario.feature'); }

Scenario Outline:
    * robot { window: 'Calculator', fork: 'calc', highlight: true, highlightDuration: 500 }
    * def new = call read('calc.feature') {val_1: <value1>,val_2: <value2>, opt: <operation>, exp_op: <expected_output>}



Examples:
    |value1         |value2         | operation     |expected_output |
    |'#num1Button'  |'#num2Button'  |'#plusButton'  |'Display is 3'  |
    |'#num4Button'  |'#num1Button'  |'#minusButton' |'Display is 3'  |
    |'#num5Button'  |'#num2Button'  |'#plusButton'  |'Display is 7'  |
    |'#num5Button'  |'#num2Button'  |'#plusButton'  |'Display is 7'  |