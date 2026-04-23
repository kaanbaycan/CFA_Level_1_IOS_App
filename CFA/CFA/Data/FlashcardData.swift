import Foundation

struct FlashcardData {
    static let topics: [TopicArea] = [
        TopicArea(
            name: "Portfolio Management",
            modules: [
                StudyModule(
                    name: "Module 5: Behavioral Biases",
                    cards: [
                        Flashcard(term: "Anchoring and adjustment bias", definition: "An information-processing bias in which the use of a psychological heuristic influences the way people estimate probabilities."),
                        Flashcard(term: "Anomalies", definition: "Apparent deviations from market efficiency."),
                        Flashcard(term: "Availability bias", definition: "An information-processing bias in which people take a heuristic approach to estimating the probability of an outcome based on how easily the outcome comes to mind."),
                        Flashcard(term: "Base-rate neglect", definition: "A type of representativeness bias in which the base rate or probability of the categorization is not adequately considered."),
                        Flashcard(term: "Cognitive cost", definition: "The effort involved in processing new information and updating beliefs."),
                        Flashcard(term: "Cognitive dissonance", definition: "The mental discomfort that occurs when new information conflicts with previously held beliefs or cognitions."),
                        Flashcard(term: "Cognitive errors", definition: "Behavioral biases resulting from faulty reasoning; cognitive errors stem from basic statistical, information-processing, or memory errors."),
                        Flashcard(term: "Confirmation bias", definition: "A type of cognitive bias that makes individuals view information that confirms beliefs they already hold as more salient."),
                        Flashcard(term: "Conservatism bias", definition: "A belief perseverance bias in which people maintain their prior views or forecasts by inadequately incorporating new information."),
                        Flashcard(term: "Disposition effect", definition: "A type of cognitive bias that makes individuals unwilling to sell their possessions at a loss."),
                        Flashcard(term: "Emotional biases", definition: "Behavioral biases resulting from reasoning influenced by feelings; emotional biases stem from impulse or intuition."),
                        Flashcard(term: "Endowment bias", definition: "An emotional bias in which people value an asset more when they hold rights to it than when they do not."),
                        Flashcard(term: "Framing bias", definition: "An information-processing bias in which a person answers a question differently based on the way in which it is asked (framed)."),
                        Flashcard(term: "Fungible", definition: "Freely exchangeable, interchangeable, or substitutable with other things of the same type. Money and commodities are the most common examples."),
                        Flashcard(term: "Halo effect", definition: "An emotional bias that extends a favorable evaluation of some characteristics to other characteristics."),
                        Flashcard(term: "Hindsight bias", definition: "A type of cognitive bias that makes individuals misremember the past in ways that make them appear to have made better and more well-informed choices."),
                        Flashcard(term: "Home bias", definition: "A preference for securities listed on the exchanges of one’s home country."),
                        Flashcard(term: "Illusion of control bias", definition: "A bias in which people tend to believe that they can control or influence outcomes when, in fact, they cannot."),
                        Flashcard(term: "Loss-aversion bias", definition: "A bias in which people tend to strongly prefer avoiding losses as opposed to achieving gains."),
                        Flashcard(term: "Mental accounting bias", definition: "An information-processing bias in which people treat one sum of money differently from another equal-sized sum based on which mental account the money is assigned to."),
                        Flashcard(term: "Overconfidence bias", definition: "A bias in which people demonstrate unwarranted faith in their own intuitive reasoning, judgments, and/or cognitive abilities."),
                        Flashcard(term: "Regret", definition: "The feeling that an opportunity has been missed; typically, an expression of hindsight bias."),
                        Flashcard(term: "Regret-aversion bias", definition: "An emotional bias in which people tend to avoid making decisions that will result in action out of fear that the decision will turn out poorly."),
                        Flashcard(term: "Representativeness bias", definition: "A belief perseverance bias in which people tend to classify new information based on past experiences and classifications."),
                        Flashcard(term: "Sample-size neglect", definition: "A type of representativeness bias in which financial market participants incorrectly assume that small sample sizes are representative of populations (or “real” data)."),
                        Flashcard(term: "Self-attribution bias", definition: "A bias in which people take too much credit for successes (self-enhancing) and assign responsibility to others for failures (self-protecting)."),
                        Flashcard(term: "Self-control bias", definition: "A bias in which people fail to act in pursuit of their long-term, overarching goals because of a lack of self-discipline."),
                        Flashcard(term: "Status quo bias", definition: "An emotional bias in which people do nothing (i.e., maintain the status quo) instead of making a change.")
                    ]
                ),
                StudyModule(
                    name: "Module 6: Introduction to Risk Management",
                    cards: [
                        Flashcard(term: "Beta", definition: "A measure of the sensitivity of a given investment or portfolio to movements in the overall market."),
                        Flashcard(term: "Credit default swap (CDS)", definition: "A type of credit derivative in which one party, the credit protection buyer who is seeking credit protection against a third party, makes a series of regularly scheduled payments to the other party, the credit protection seller. The seller makes no payments until a credit event occurs."),
                        Flashcard(term: "Credit risk", definition: "The expected economic loss under a potential borrower default over the life of the contract."),
                        Flashcard(term: "CVaR", definition: "Conditional VaR, a tail loss measure. The weighted average of all loss outcomes in the statistical distribution that exceed the VaR loss."),
                        Flashcard(term: "Delta", definition: "The sensitivity of the derivative price to a small change in the value of the underlying asset."),
                        Flashcard(term: "Duration", definition: "The first-order, linear change in a bond’s price for a given yield change in yield, which is a negative or inverse relationship."),
                        Flashcard(term: "Enterprise risk management", definition: "An overall assessment of a company’s risk position. A centralized approach to risk management sometimes called firmwide risk management."),
                        Flashcard(term: "Extreme value theory", definition: "A branch of statistics that focuses primarily on extreme outcomes."),
                        Flashcard(term: "Financial risk", definition: "The risk arising from a company’s capital structure and, specifically, from the level of debt and debt-like obligations."),
                        Flashcard(term: "Gamma", definition: "A numerical measure of how sensitive an option’s delta (the sensitivity of the derivative’s price) is to a change in the value of the underlying."),
                        Flashcard(term: "Human capital", definition: "The present value of an individual’s future expected labor income."),
                        Flashcard(term: "Liquidity risk", definition: "The risk that an investment may not be readily sold at its true value."),
                        Flashcard(term: "Market risk", definition: "Risk related to market movements, e.g., unexpected changes in share prices, interest rates, currency exchange rates, and commodity prices."),
                        Flashcard(term: "Non-financial risks", definition: "Risks that arise from sources other than changes in the external financial markets, such as changes in accounting rules, legal environment, or tax rates."),
                        Flashcard(term: "Operational risk", definition: "The risk that arises from inadequate or failed people, systems, and internal policies, procedures, and processes, as well as from external events that are beyond the control of the organization but that affect its operations."),
                        Flashcard(term: "Rho", definition: "The change in a given derivative instrument for a given small change in the risk-free interest rate, holding everything else constant. Rho measures the sensitivity of the option to the risk-free interest rate."),
                        Flashcard(term: "Risk", definition: "Exposure to uncertainty. The chance of a loss or adverse outcome as a result of an action, inaction, or external event."),
                        Flashcard(term: "Risk budgeting", definition: "The establishment of objectives for individuals, groups, or divisions of an organization that takes into account the allocation of an acceptable level of risk."),
                        Flashcard(term: "Risk exposure", definition: "The state of being exposed or vulnerable to a risk. The extent to which an organization is sensitive to underlying risks."),
                        Flashcard(term: "Risk governance", definition: "The top-down process and guidance that directs risk management activities to align with and support the overall enterprise."),
                        Flashcard(term: "Risk management", definition: "The process of identifying the level of risk an organization wants, measuring the level of risk the organization currently has, taking actions that bring the actual level of risk to the desired level of risk, and monitoring the new actual level of risk so that it continues to be aligned with the desired level of risk."),
                        Flashcard(term: "Risk management framework", definition: "The infrastructure, process, and analytics needed to support effective risk management in an organization."),
                        Flashcard(term: "Risk shifting", definition: "Actions to change the distribution of risk outcomes."),
                        Flashcard(term: "Risk tolerance", definition: "The level of risk an investor is willing and able to bear."),
                        Flashcard(term: "Risk transfer", definition: "Strategies implemented to mitigate the impact of specific risks by transferring them to an insurance company."),
                        Flashcard(term: "Scenario analysis", definition: "A variation of the valuation process combining a base case with alternative outcomes, allowing the incorporation of more favorable or adverse scenarios in the valuation process."),
                        Flashcard(term: "Solvency risk", definition: "The risk that an organization does not survive or succeed because it runs out of cash, even though it might otherwise be solvent."),
                        Flashcard(term: "Stress testing", definition: "A specific type of scenario analysis that estimates losses in rare and extremely unfavorable combinations of events or scenarios."),
                        Flashcard(term: "Value at risk", definition: "A money measure of the minimum value of losses expected during a specified time period at a given level of probability."),
                        Flashcard(term: "VaR", definition: "See value at risk."),
                        Flashcard(term: "Vega", definition: "A measure of the sensitivity of an option’s price to changes in the underlying’s volatility.")
                    ]
                )
            ]
        )
    ]
}
