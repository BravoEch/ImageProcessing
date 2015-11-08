module Days

--Data Type
data Days = Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday

--Functions
nextDay: Days -> Days
nextDay Sunday = Monday
nextDay Monday = Tuesday
nextDay Tuesday = Wednesday
nextDay Wednesday = Thursday
nextDay Thursday = Friday
nextDay Friday = Saturday
nextDay Saturday = Sunday

nextWeekday: Days -> Days
nextWeekday Sunday = Monday
nextWeekday Monday = Tuesday
nextWeekday Tuesday = Wednesday
nextWeekday Wednesday = Thursday
nextWeekday Thursday = Friday
nextWeekday Friday = Monday
nextWeekday Saturday = Monday
