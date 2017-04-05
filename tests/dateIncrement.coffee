
describe 'dateIncrement', ->

	describe 'when a seven days and view is a month', ->
		pushOptions
			defaultDate: '2017-04-12'
			defaultView: 'timeline'
			duration: { months: 1 }
			dateIncrement: { days: 7 }

		it 'causes the view to align at defaultDate', ->
			initCalendar()
			ViewDateUtils.expectActiveRange('2017-04-12', '2017-05-12')
			# KNOWN ISSUE: title is weird ("April - May")

	describe 'when a week and view is a month', ->
		pushOptions
			defaultDate: '2017-04-12'
			defaultView: 'timeline'
			duration: { months: 1 }
			dateIncrement: { week: 1 }

		it 'causes the view to align at defaultDate\'s week start', ->
			initCalendar()
			ViewDateUtils.expectActiveRange('2017-04-09', '2017-05-09')
			# KNOWN ISSUE: title is weird ("April - May")

	describe 'when a year and view is a month', ->
		pushOptions
			defaultDate: '2017-04-12'
			defaultView: 'timeline'
			duration: { months: 1 }
			dateIncrement: { years: 1 }

		it 'causes the view to align to the smaller of the two units (the month)', ->
			initCalendar()
			ViewDateUtils.expectActiveRange('2017-04-01', '2017-05-01')
			# KNOWN ISSUE: title is weird ("April - May")
