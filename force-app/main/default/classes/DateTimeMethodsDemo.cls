public class DateTimeMethodsDemo {

    public void printOfferEndDateTiem(){
        datetime dtNow = datetime.now();

        datetime dtOfferEnd = dtNow.addHours(51);
        system.debug('offer will end on: ' + dtOfferEnd);

        date offerEndDate = dtOfferEnd.date();
        system.debug('offer end date is ' + offerEndDate);
    }

    public void printSubscriptionEndDate(){
        date subscriptionStartDate = date.today();

        date subscriptionEndDate = subscriptionStartDate.addDays(1000);
        system.debug('subscription end date = ' + subscriptionEndDate);

        integer endDateYear = subscriptionEndDate.year();
        integer endDateMonth = subscriptionEndDate.month();

        system.debug('subs end date year is = ' + endDateYear);
        system.debug('subs end date month is = ' + endDateMonth);
    }
   public void calculateAgeInMonths(){
       system.debug('calculate age in months');
       date birthdate = date.newInstance(1990, 10, 9);
       date todaydate = date.today();

       integer ageInMonths = birthdate.monthsBetween(todaydate);
       system.debug('my age in months is ' + ageInMonths);
   }

   public void calculateAgeInDays(){
        system.debug('calculate age in months');
        date birthdate = date.newInstance(1990, 10, 9);
        date todaydate = date.today();

        integer ageIndays = birthdate.daysBetween(todaydate);
        system.debug('my age in days is ' + ageIndays);
    }
}
