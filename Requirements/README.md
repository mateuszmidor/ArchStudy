# Requirements

## Alistar Cockburn UseCases

1. Title: "an active-verb goal phrase that names the goal of the primary actor"[25]
1. Primary Actor
1. Goal in Context
1. Scope
1. Level
1. Stakeholders and Interests
1. Precondition
1. Minimal Guarantees
1. Success Guarantees
1. Trigger
1. Main Success Scenario
1. Extensions
1. Technology & Data Variations List

See example: <https://en.wikipedia.org/wiki/Use_case#Examples> 

## Code Complete 2.0

Wymagania są jak woda - łatwiej na nich budować, gdy są zamrożone.  
W przeciętnym projekcie zmianie ulega 25% wymagań i pociąga za sobą 75% pracy związanej z przebudową systemu.  
Warto zadbać o to, by wszyscy mieli świadomość kosztów  zmian w specyfikacji wymagań. Metoda na klienta, który jest w gorącej wodzie kąpany:  
**“O rany, świetny pomysł.  Ponieważ nie uwzględniliśmy go w specyfikacji wymagań, opracuję niezbędną korektę harmonogramu realizacji projektu i oszacuję koszty, aby mógł pan podjąć decyzję, czy wprowadzać to od razu, czy w późniejszym terminie”.**  
Słowa “Korekta harmonogramu” i “koszty” trzeźwią lepiej niż kawa i zimny prysznic. “Koniecznie” szybko zmienia się wtedy w “dobrze by było”.  
Wprowadź procedurę kontroli zmian - nie ma nic złego w tym, że klienci zmieniają zdanie i dochodzą do wniosku, że potrzebują czegoś więcej.  
Problemem może być sytuacja, gdy robią to na tyle często, że trudno za nimi nadążyć. Wtedy przydaje się “standardowa procedura kontroli zmian” - czyli np. zmiany są omawiane przez formalną radę do nadzoru zmian. Programista jest wtedy szczęśliwy, bo modyfikacjenie pojawiają się często i nagle, a klient jest zadowolony, bo wie, że wykonawca jest gotowy na przyjęcie jego sugestii i wniosków.


### Wymagania funkcjonalne:

- czy opisano wszystkie funkcje, których oczekuje użytkownik?
- czy opisano wszystkie wejścia systemu - źródła danych, dokładność, zakres wartości i częstotliwość?
- czy opisano wszystkie wyjścia z systemu - miejsca docelowe danych, dokładność, zakres wartości, częstotliwość i format?
- czy opisano wszystkie formaty wyjściowe stron WWW, raportów itd?
- czy opisano wszystkie zewnętrzne interfejsy sprzętowe i programowe?
- czy opisano wszystkie zewnętrzne interfejsy komunikacyjne, w tym protokoły komunikacyjne?
- czy opisano dane wykorzystywane przez każdą funkcję i jej dane wynikowe?

### Wymagania jakościowe:

- czy zapisano dla wszystkich funkcji wymagany przez użytkownika czas reakcji?
- czy określono parametry czasowe takie jak czas przetwarzania, szybkość transmisji danych i przepustowość systemu?
- czy określono poziom bezpieczeństwa?
- czy określono poziom niezawodności, w tym konsekwencje awarii oprogramowania, kluczowe informacje, które nie mogą zostać utracone, oraz - strategię wykrywania i usuwania błędów?
- czy określono minimalną ilość pamięci komputera i miejsca na dysku?
- czy określono poziom elastyczności systemu - zdolność adaptacji do zmian w określonych funkcjach, w środowisku operacyjnym i w  interfejsach łączących go z innym oprogramowaniem?
- czy specyfikacja zawiera definicję udanego projektu? A nieudanego?

### Jakość wymagań:

- czy wymagania zapisano w języku użytkowników? Czy użytkownicy też tak uważają?
- czy wymagania nie są wzajemnie sprzeczne? Czy występuje możliwość powstania konfliktów?
- czy określono akceptowalne kompromisy dla konkurujących ze sobą atrybutów, np. wydajności i poprawności?
- czy w specyfikacji unika się określania cech projektu?
- czy poziom szczegółowości wymagań jest w miarę jednolity? Czy są wymagania, które trzeba uszczegółowić, albo takie, które są określony - zbyt dokładnie?
- **czy wymagania są na tyle zrozumiałe, że mogłyby zostać przekazane innemu zespołowi? Czy programiści też tak uważają?**
- czy poszczególne elementy mają odniesienie do problemu i jego rozwiązania? Czy można powiązać każdy z nich z jego źródłem w środowisku - problemu?
- Czy poszczególne wymagania są testowalne? Czy byłoby możliwe określenie tego, czy zostały spełnione, przez niezależny zespół?
- czy określono możliwe zmiany w wymaganiach i prawdopodobieństwo ich wystąpienie?

### Kompletność wymagań:

- czy dla informacji niedostępnych przed rozpoczęciem budowy oprogramowania określono obszary niekompletności wymagań?
- czy wymagania są kompletne w tym znaczeniu, że spełnienie każdego z nich będzie jednoznaczne z akceptacją produktu?
- czy wymagania wydają Ci się rozsądne? Czy wyeliminowałeś te z nich, których implementacja jest niemożliwa, a których włączenie do specyfikacji było tylko ustępstwem wymuszonym przez przełożonego lub klienta?
