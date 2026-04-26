import Foundation

struct FlashcardData {
    static let topics: [TopicArea] = [
        TopicArea(
            name: "Ethical and Professional Standards",
            weight: "15-20%",
            modules: [
                StudyModule(
                    name: "Module 1: Ethics and Trust in the Investment Profession",
                    cards: [
                        Flashcard(term: "Code of ethics", definition: "An established guide that communicates an organization’s values and overall expectations regarding member behavior. A code of ethics serves as a general guide for how community members should act."),
                        Flashcard(term: "Ethical principles", definition: "Beliefs regarding what is good, acceptable, or obligatory behavior and what is bad, unacceptable, or forbidden behavior."),
                        Flashcard(term: "Ethics", definition: "The study of moral principles or of making good choices. Ethics encompasses a set of moral principles and rules of conduct that provide guidance for our behavior."),
                        Flashcard(term: "Moral principles", definition: "Beliefs regarding what is good, acceptable, or obligatory behavior and what is bad, unacceptable, or forbidden behavior."),
                        Flashcard(term: "Profession", definition: "An occupational group that has specific education, expert knowledge, and a framework of practice and behavior that underpins community trust, respect, and recognition."),
                        Flashcard(term: "Situational influences", definition: "External factors, such as environmental or cultural elements, that shape our behavior."),
                        Flashcard(term: "Stakeholders", definition: "Any party with an interest, financial or non-financial, in an entity or its actions."),
                        Flashcard(term: "Standards of conduct", definition: "Behaviors required by a group; established benchmarks that clarify or enhance a group’s code of ethics.")
                    ]
                ),
                StudyModule(
                    name: "Module 1.02: Ethics & Trust",
                    cards: [
                        Flashcard(term: "Definition of Ethics", definition: "A set of moral principles and rules of conduct that provide guidance for our behavior."),
                        Flashcard(term: "Stakeholders in Investment", definition: "Individuals or groups affected directly or indirectly by a decision (e.g., clients, colleagues, employers, the profession, and the public)."),
                        Flashcard(term: "Ethics vs. Standards of Conduct", definition: "Ethics are the principles (the \"why\"); Standards of Conduct are the benchmarks for minimally acceptable behavior (the \"what\")."),
                        Flashcard(term: "Fiduciary vs. Suitability", definition: "Fiduciary: Putting client interests first. Suitability: Recommending what fits the client, even if it has higher fees than a similar product."),
                        Flashcard(term: "Internal Damage of Violations", definition: "Beyond external reputation, violations cause the community to fracture or splinter and reduce trust among members.")
                    ],
                    manualQuestions: [
                        ManualQuestion(
                            question: "An investment advisor recommends a high-commission mutual fund to a client. The fund is appropriate for the client’s risk profile, but a nearly identical fund with much lower fees is also available. In a jurisdiction that only requires a suitability standard, the advisor's action is:",
                            correctAnswer: "Legally permissible but potentially unethical.",
                            options: [
                                "A violation of the law.",
                                "Legally permissible but potentially unethical.",
                                "Both legal and ethical because the fund fits the client's risk profile."
                            ]
                        ),
                        ManualQuestion(
                            question: "Which of the following is most accurately described as a benchmark for the minimally acceptable behavior of community members?",
                            correctAnswer: "Standards of Conduct.",
                            options: [
                                "Code of Ethics.",
                                "Standards of Conduct.",
                                "Moral Principles."
                            ]
                        ),
                        ManualQuestion(
                            question: "A research analyst publishes a report with intentionally misleading data to help his firm win a deal. In the short term, this benefits his employer. According to the study of ethics, this conduct is:",
                            correctAnswer: "Unethical, because it fails to balance self-interest with consequences for all stakeholders.",
                            options: [
                                "Ethical, as it fulfills the duty to the employer and certain clients.",
                                "Unethical, because it fails to balance self-interest with consequences for all stakeholders.",
                                "Neutral, provided no laws were broken in the specific jurisdiction."
                            ]
                        )
                    ],
                    traps: [
                        Flashcard(term: "The 'Legal = Ethical' Trap", definition: "Just because it's legal doesn't mean it's ethical under the Code and Standards. If the law is 'Suitability' but the Ethics are 'Fiduciary,' the CFA expects you to follow the more restrictive ethical path."),
                        Flashcard(term: "The Stakeholder Blind Spot", definition: "Ethics requires balancing the interests of all stakeholders, including the 'investment profession' and 'financial markets'. If a trade helps a client but harms market integrity (like insider trading), it is unethical."),
                        Flashcard(term: "Code vs. Standards", definition: "Code: Aspirational, general guide, values-based. Standards: Practical, specific, minimally acceptable benchmarks.")
                    ]
                ),
                StudyModule(
                    name: "Module 1.03: The Investment Profession",
                    cards: [
                        Flashcard(term: "Profession vs. Trade Body", definition: "A profession has a mission to serve society and enforces conduct rules; a trade body generally does not."),
                        Flashcard(term: "Fiduciary Duty", definition: "The obligation to deliver a high standard of care, skill, and diligence when acting for the benefit of another party."),
                        Flashcard(term: "Overriding Obligation", definition: "When client interests and market interests conflict, a professional’s duty to market integrity is the overriding obligation."),
                        Flashcard(term: "Young Profession Status", definition: "Investment management is considered \"young\" because recognition lags and membership in a professional body is not yet universally required to practice."),
                        Flashcard(term: "Practice Analysis", definition: "The process (interacting with practitioners) used by the CFA Institute to keep the GBIK and CBOK current and relevant.")
                    ],
                    manualQuestions: [
                        ManualQuestion(
                            question: "An investment professional is faced with a situation where a client's specific request, while legal, would likely undermine the public's trust in the fairness of the financial markets. According to the CFA Institute Code and Standards, the professional's primary duty is to:",
                            correctAnswer: "The integrity of the financial markets.",
                            options: [
                                "The client’s interests, provided the action is legal.",
                                "The employer’s profitability and reputation.",
                                "The integrity of the financial markets."
                            ]
                        ),
                        ManualQuestion(
                            question: "Which of the following is a characteristic that distinguishes a profession from a trade body?",
                            correctAnswer: "A mission that emphasizes service to society and the enforcement of conduct rules.",
                            options: [
                                "The primary focus on advancing the careers of its members.",
                                "A mission that emphasizes service to society and the enforcement of conduct rules.",
                                "The requirement of a specific educational background or degree."
                            ]
                        ),
                        ManualQuestion(
                            question: "Investment management is often described as an \"evolving\" or \"young\" profession primarily because:",
                            correctAnswer: "It has not yet universally implemented the requirement to join a professional body to practice.",
                            options: [
                                "It relies heavily on new technology and algorithms.",
                                "It has not yet universally implemented the requirement to join a professional body to practice.",
                                "It lacks a recognized body of expert knowledge similar to medicine or law."
                            ]
                        )
                    ],
                    traps: [
                        Flashcard(term: "The 'Client First' Reflex", definition: "On the CFA exam, if the client's interest conflicts with Market Integrity (like a trade that would hurt market transparency), Market Integrity wins. Always look for the option that protects the 'system'."),
                        Flashcard(term: "The 'Trade Body' Confusion", definition: "A trade body provides networking and lobbies for members. A profession must have a mission of public service and conduct monitoring."),
                        Flashcard(term: "Volunteering is Mandatory?", definition: "Volunteering is encouraged and part of the essence of being a professional, but it is aspirational, not a minimally acceptable standard."),
                        Flashcard(term: "The Knowledge Gap", definition: "A profession is defined by a 'body of expert knowledge'. In investment management, this is maintained through Practice Analysis.")
                    ]
                ),
                StudyModule(
                    name: "Module 1.04: Situational Influences",
                    cards: [
                        Flashcard(term: "Overconfidence Bias", definition: "The belief that one is more ethical than average, leading to an overestimation of the morality of one's own future behavior."),
                        Flashcard(term: "Situational Influences", definition: "External factors (environmental or cultural) that shape thinking and behavior, often more than internal traits."),
                        Flashcard(term: "Top 3 Situational Influences in Finance", definition: "Money, Prestige, and Loyalty."),
                        Flashcard(term: "Short-Term vs. Long-Term Focus", definition: "Situational influences (like bonuses) trigger short-term thinking, blinding us to long-term risks like market integrity."),
                        Flashcard(term: "Compliance Culture vs. Ethical Culture", definition: "Compliance asks 'What can I do?' (rules-based); Ethics asks 'What should I do?' (principles-based).")
                    ],
                    manualQuestions: [
                        ManualQuestion(
                            question: "Which of the following is most likely the primary determinant of whether an individual will behave unethically in a high-pressure professional environment?",
                            correctAnswer: "External situational influences and environmental factors.",
                            options: [
                                "The individual's innate character and honesty.",
                                "External situational influences and environmental factors.",
                                "The individual's level of education and technical expertise."
                            ]
                        ),
                        ManualQuestion(
                            question: "An employee at an investment firm strictly follows all written company policies but ignores the potential negative impact of a new product on long-term market stability. This 'check-the-box' behavior is most likely a result of:",
                            correctAnswer: "A strong compliance-based culture.",
                            options: [
                                "High ethical standards.",
                                "A strong compliance-based culture.",
                                "Overconfidence bias."
                            ]
                        ),
                        ManualQuestion(
                            question: "Which statement regarding situational influences is most accurate?",
                            correctAnswer: "They often shift a professional’s focus from long-term integrity to short-term self-interest.",
                            options: [
                                "Situational influences are internal traits that determine moral fiber.",
                                "They often shift a professional’s focus from long-term integrity to short-term self-interest.",
                                "They only lead to negative outcomes and cannot induce ethical behavior."
                            ]
                        )
                    ],
                    traps: [
                        Flashcard(term: "The 'Good Person' Fallacy", definition: "Internal traits (high character) are generally NOT the main determinant of ethical behavior; the situation/environment is."),
                        Flashcard(term: "The 'Compliance = Safety' Trap", definition: "Excessive focus on compliance can lead to a 'check-the-box' mentality where people stop asking 'What should I do?' and only ask 'What can I do?'"),
                        Flashcard(term: "The Loyalty Double-Edge", definition: "Loyalty to a boss or colleague is a powerful situational influence. It should never override loyalty to the client or market integrity."),
                        Flashcard(term: "Overconfidence Bias", definition: "In this module, it refers specifically to moral overconfidence—thinking you are 'too good' to ever fall for a situational trap.")
                    ]
                ),
                StudyModule(
                    name: "Module 1.05: Ethical vs. Legal Standards",
                    cards: [
                        Flashcard(term: "Relationship between Law and Ethics", definition: "They are not identical; laws often codify ethics, but some legal acts are unethical, and some ethical acts are illegal."),
                        Flashcard(term: "Example: Legal but Unethical", definition: "Trading on material nonpublic information in a country where no law prohibits it (CFA Institute still deems it unethical)."),
                        Flashcard(term: "Example: Illegal but Ethical", definition: "Whistleblowing or civil disobedience, where breaking a law or policy exposes corruption for the benefit of society."),
                        Flashcard(term: "Why Law is 'Reactive'", definition: "Laws typically follow market practices, often created in response to a crisis or significant losses rather than being proactive."),
                        Flashcard(term: "The 'Law Loophole' Problem", definition: "New laws may be narrow, allowing questionable practices to shift to other jurisdictions or create new, similar problems.")
                    ],
                    manualQuestions: [
                        ManualQuestion(
                            question: "Which of the following statements regarding the relationship between legal and ethical standards is most accurate?",
                            correctAnswer: "Ethical standards often require a higher level of conduct than is required by law.",
                            options: [
                                "All ethical actions are eventually codified into law by regulators.",
                                "Ethical standards often require a higher level of conduct than is required by law.",
                                "Legal standards represent the highest benchmark for professional behavior."
                            ]
                        ),
                        ManualQuestion(
                            question: "An investment professional works in a country where 'front-running' client trades is not legally prohibited. If the professional engages in this practice, their conduct is:",
                            correctAnswer: "Unethical, even if it is technically legal in that jurisdiction.",
                            options: [
                                "Both legal and ethical, as it follows the local market practice.",
                                "Ethical, because it conforms to the laws of the jurisdiction.",
                                "Unethical, even if it is technically legal in that jurisdiction."
                            ]
                        ),
                        ManualQuestion(
                            question: "Regulators often find it difficult to use the law to eliminate unethical behavior because:",
                            correctAnswer: "Market participants may interpret new laws in the most advantageous way possible to delay compliance.",
                            options: [
                                "Market participants may interpret new laws in the most advantageous way possible to delay compliance.",
                                "Laws are proactive and often prevent new types of misconduct before they occur.",
                                "Ethics and laws always conflict in the investment industry."
                            ]
                        )
                    ],
                    traps: [
                        Flashcard(term: "The 'Whistleblower' Confusion", definition: "Whistleblowing can be ethical even if it is illegal or violates firm policy (e.g., breaking an NDA to expose corruption)."),
                        Flashcard(term: "The 'Proactive Regulator' Myth", definition: "Laws are reactive and follow market practices; they often take significant time to implement while harm continues to grow."),
                        Flashcard(term: "The 'Highest Standard' Trap", definition: "The Code and Standards (Ethics) is almost always the higher standard. If law says 'okay' but Code says 'no,' follow the Code."),
                        Flashcard(term: "Judgment vs. Algorithm", definition: "Laws are often a checklist/formula, but ethics is about judgment. Ethical courses of action cannot be found via a simple formula.")
                    ]
                ),
                StudyModule(
                    name: "Module 1.06: Ethical Decision-Making Frameworks",
                    cards: [
                        Flashcard(term: "Most Important Factor for Ethical Behavior", definition: "The development, maintenance, and demonstration of a strong culture of integrity by senior management."),
                        Flashcard(term: "The 'Identify' Phase", definition: "Pinpointing relevant facts, stakeholders, duties owed, ethical principles, and conflicts of interest."),
                        Flashcard(term: "The 'Consider' Phase", definition: "Evaluating situational influences (like bonuses or boss pressure), seeking additional guidance, and identifying alternative actions."),
                        Flashcard(term: "The 'Reflect' Phase", definition: "Assessing the outcome after acting: Was it anticipated? Why or why not?"),
                        Flashcard(term: "Framework Characteristics", definition: "It is an iterative process designed to help decision-makers see multiple perspectives and avoid unanticipated consequences.")
                    ],
                    manualQuestions: [
                        ManualQuestion(
                            question: "An ethical decision-making framework is primarily designed to:",
                            correctAnswer: "Help a professional see a situation from multiple perspectives and identify less-evident factors.",
                            options: [
                                "Replace a firm's internal code of ethics if it is too brief.",
                                "Ensure that an individual always follows local laws over professional standards.",
                                "Help a professional see a situation from multiple perspectives and identify less-evident factors."
                            ]
                        ),
                        ManualQuestion(
                            question: "Which of the following would a professional most likely do during the Consider phase of the framework?",
                            correctAnswer: "Analyze how a personal bias for self-preservation might be affecting their thinking.",
                            options: [
                                "Analyze how a personal bias for self-preservation might be affecting their thinking.",
                                "Identify the stakeholders to whom they owe a fiduciary duty.",
                                "Review whether the final outcome of a trade was as anticipated."
                            ]
                        ),
                        ManualQuestion(
                            question: "Senior management at an investment bank frequently demonstrates a strong commitment to accountability. According to Module 1.06, this is:",
                            correctAnswer: "The single most important factor in promoting ethical behavior among employees.",
                            options: [
                                "Only effective if paired with a strict, rules-based compliance manual.",
                                "The single most important factor in promoting ethical behavior among employees.",
                                "Less important than an individual's innate sense of 'doing the right thing.'"
                            ]
                        ),
                        ManualQuestion(
                            question: "When applying the framework, if a professional realizes they lack enough information to make a principled choice, they should:",
                            correctAnswer: "Treat the process as iterative and return to the 'Identify' phase for more facts.",
                            options: [
                                "Proceed with the most profitable action to fulfill their duty to the employer.",
                                "Rely on their gut instinct since frameworks cannot account for missing data.",
                                "Treat the process as iterative and return to the 'Identify' phase for more facts."
                            ]
                        )
                    ],
                    traps: [
                        Flashcard(term: "The 'Good Person' Myth", definition: "A simple 'inclination to do right' is insufficient against high-pressure conflicts; you need a framework to build ethical 'muscle memory'."),
                        Flashcard(term: "Identify vs. Consider", definition: "Identify: Facts, Stakeholders, Duties. Consider: Situational influences, personal biases, seeking additional guidance."),
                        Flashcard(term: "The 'Finality' Trap", definition: "The process does not end after acting. The 'Reflect' phase is crucial to assess the outcome and improve future judgment."),
                        Flashcard(term: "The 'Senior Management' Distraction", definition: "Senior management's culture of integrity is the single most important factor in promoting ethical behavior, more than training or rules.")
                    ]
                ),
                StudyModule(
                    name: "Module 1.08: Ethics Summary",
                    cards: [],
                    summary: """
                    Ethics refers to the study of making good choices. Ethics encompasses a set of moral principles and rules of conduct that provide guidance for our behavior.

                    Situational influences are external factors that may shape our behavior.

                    Challenges to ethical behavior include being overconfident in our own morality, underestimating the effect of situational influences, and focusing on the immediate rather than long-term outcomes or consequences of a decision.

                    In any given profession, the code of ethics publicly communicates the established principles and expected behavior of its members.

                    Members of a profession use specialized knowledge and skills to serve others; they share and agree to adhere to a common code of ethics to serve others and advance the profession.

                    A code of ethics helps foster public confidence that members of the profession will use their specialized skills and knowledge to serve their clients and others.

                    A profession is an occupational group that has specific education, expert knowledge, and a framework of practice and behavior that underpins community trust, respect, and recognition.

                    The requirement to uphold high ethical standards is one clear difference between professions and craft guilds or trade bodies.

                    A primary goal of professions is to establish trust among clients and among society in general.

                    Common characteristics of professions include normalization of practitioner behavior, service to society, client focus, high entry standards, a body of expert knowledge, encouragement and facilitation of continuing education, monitoring of professional conduct, collegiality, recognized overseeing bodies, and encouragement of member engagement.

                    The investment management profession has become increasingly global, driven by the opening of capital markets, coordination of regulation across borders, and the emergence of technology.

                    Investment management professionals are trusted to draw on a body of formal knowledge and apply that knowledge with care and judgement. In comparison to clients, investment professionals are also expected to have superior financial expertise, technical knowledge, and knowledge of the applicable laws and regulations.

                    As a professional body, CFA Institute gathers knowledge from practicing investment professionals, conducts rigorous examinations, and ensures practitioner involvement in developing its codes and values.

                    Investment management professionals are likely to encounter dilemmas, including those with ethical implications. Professionals should consider carefully how to determine the facts of the issue and assess the implications.

                    High ethical standards always matter and are of particular importance in the investment management profession, which is based almost entirely on trust. Clients trust investment professionals to use their specialized skills and knowledge to serve clients and protect client assets. All stakeholders gain long-term benefits when investment professionals adhere to high ethical standards.

                    Legal standards are often rule based. Ethical conduct goes beyond legal standards, balancing self-interest with the direct and indirect consequences of behavior on others.

                    A framework for ethical decision making can help people look at and evaluate a decision from different perspectives, enabling them to identify important issues, make wise decisions, and limit unintended consequences.
                    """
                )
            ]
        ),
        TopicArea(
            name: "Quantitative Methods",
            weight: "6-9%",
            modules: []
        ),
        TopicArea(
            name: "Economics",
            weight: "6-9%",
            modules: []
        ),
        TopicArea(
            name: "Financial Statement Analysis",
            weight: "11-14%",
            modules: [
                StudyModule(
                    name: "Module 8: Topics in Long-Term Liabilities and Equity",
                    cards: [
                        Flashcard(term: "Defined benefit pension plans (DB plans)", definition: "Plans in which the company promises to pay a certain annual amount (defined benefit) to the employee after retirement. The company bears the investment risk of the plan assets."),
                        Flashcard(term: "Defined contribution pension plans", definition: "Individual accounts to which an employee and typically the employer makes contributions during their working years and expect to draw on the accumulated funds at retirement. The employee bears the investment and inflation risk of the plan assets."),
                        Flashcard(term: "Exercise date", definition: "The day that an option is exercised by its holder. For a call option, the day the strike price is paid and underlying is purchased. For a put option, when the strike price is received and the underlying is sold."),
                        Flashcard(term: "Finance lease", definition: "A type of lease which is more akin to the purchase or sale of the underlying asset."),
                        Flashcard(term: "Grant date", definition: "The day that terms of compensation are communicated by an issuer and accepted by an employee recipient."),
                        Flashcard(term: "Lessee", definition: "Tenant or property user that enters a lease with a property owner or lessor."),
                        Flashcard(term: "Lessor", definition: "Property owner or manager that leases a property to a tenant or property user."),
                        Flashcard(term: "Operating leases", definition: "A type of lease which is more akin to the rental of the underlying asset."),
                        Flashcard(term: "Service period", definition: "The time between the grant and vesting dates for an employee share-based award, usually measured in years."),
                        Flashcard(term: "Vest", definition: "To become unconditionally entitled to."),
                        Flashcard(term: "Vesting date", definition: "The day that an employee becomes unconditionally entitled to compensation.")
                    ]
                ),
                StudyModule(
                    name: "Module 9: Analysis of Income Taxes",
                    cards: [
                        Flashcard(term: "Accounting profit", definition: "Income as reported on the income statement, in accordance with prevailing accounting standards, before the provisions for income tax expense. Also called income before taxes or pretax income."),
                        Flashcard(term: "Carrying amount", definition: "The amount at which an asset or liability is valued according to accounting principles."),
                        Flashcard(term: "Deductible temporary differences", definition: "Temporary differences that result in a reduction of or deduction from taxable income in a future period when the balance sheet item is recovered or settled."),
                        Flashcard(term: "Deferred tax assets", definition: "A balance sheet asset that arises when an excess amount is paid for income taxes relative to accounting profit. The taxable income is higher than accounting profit and income tax payable exceeds tax expense. The company expects to recover the difference during the course of future operations when tax expense exceeds income tax payable."),
                        Flashcard(term: "Deferred tax liabilities", definition: "A balance sheet liability that arises when a deficit amount is paid for income taxes relative to accounting profit. The taxable income is less than the accounting profit and income tax payable is less than tax expense. The company expects to eliminate the liability over the course of future operations when income tax payable exceeds tax expense."),
                        Flashcard(term: "Income tax paid", definition: "The actual amount paid for income taxes in the period; not a provision, but the actual cash outflow."),
                        Flashcard(term: "Income tax payable", definition: "The income tax owed by the company on the basis of taxable income."),
                        Flashcard(term: "Permanent differences", definition: "Differences between tax and financial reporting of revenue (expenses) that will not be reversed at some future date. These result in a difference between the company’s effective tax rate and statutory tax rate and do not result in a deferred tax item."),
                        Flashcard(term: "Taxable income", definition: "The portion of an entity’s income that is subject to income taxes under the tax laws of its jurisdiction."),
                        Flashcard(term: "Taxable temporary differences", definition: "Temporary differences that result in a taxable amount in a future period when determining the taxable profit as the balance sheet item is recovered or settled."),
                        Flashcard(term: "Tax base", definition: "The amount at which an asset or liability is valued for tax purposes."),
                        Flashcard(term: "Tax expense", definition: "An aggregate of an entity’s income tax payable (or recoverable in the case of a tax benefit) and any changes in deferred tax assets and liabilities. It is essentially the income tax payable or recoverable if these had been determined based on accounting profit rather than taxable income.")
                    ]
                ),
                StudyModule(
                    name: "Module 11: Financial Analysis Techniques",
                    cards: [
                        Flashcard(term: "Activity ratios", definition: "Ratios that measure how well a company is managing key current assets and working capital over time."),
                        Flashcard(term: "Asset utilization ratios", definition: "Ratios that measure how efficiently a company performs day-to-day tasks, such as the collection of receivables and management of inventory."),
                        Flashcard(term: "Common-size analysis", definition: "The restatement of financial statement items using a common denominator or reference item that allows one to identify trends and major differences; an example is an income statement in which all items are expressed as a percent of revenue."),
                        Flashcard(term: "Cross-sectional analysis", definition: "Analysis over a group as of a given time."),
                        Flashcard(term: "Debt-to-assets ratio", definition: "A solvency ratio calculated as total debt divided by total assets."),
                        Flashcard(term: "Debt-to-capital ratio", definition: "A solvency ratio calculated as total debt divided by total debt plus total shareholders’ equity."),
                        Flashcard(term: "Debt-to-equity ratio", definition: "A solvency ratio calculated as total debt divided by total shareholders’ equity."),
                        Flashcard(term: "Defensive interval ratio", definition: "A liquidity ratio that estimates the number of days that an entity could meet cash needs from liquid assets; calculated as (cash + short-term marketable investments + receivables) divided by daily cash expenditures."),
                        Flashcard(term: "Dupont analysis", definition: "An approach to decomposing return on investment, e.g., return on equity, as the product of other financial ratios."),
                        Flashcard(term: "Financial leverage ratio", definition: "A measure of financial leverage calculated as average total assets divided by average total equity."),
                        Flashcard(term: "Fixed charge coverage", definition: "A solvency ratio measuring the number of times interest and lease payments are covered by operating income, calculated as (EBIT + lease payments) divided by (interest payments + lease payments)."),
                        Flashcard(term: "Fixed charge coverage ratio", definition: "A measure of how well a company's earnings covers its fixed expenses, which may include debt payments, interest expense, and lease costs."),
                        Flashcard(term: "Gross profit margin", definition: "The ratio of gross profit to revenues."),
                        Flashcard(term: "Interest coverage", definition: "A solvency ratio calculated as EBIT divided by interest payments."),
                        Flashcard(term: "Interest coverage ratio", definition: "A measure of an issuer's ability to service its debt, typically the ratio of operating income or EBIT to interest expense."),
                        Flashcard(term: "Liquidity ratios", definition: "Financial ratios measuring the company’s ability to meet its short-term obligations to creditors as they come due."),
                        Flashcard(term: "Net cash", definition: "An issuer's total debt less cash and marketable securities. When the balance is negative it is referred to as net cash."),
                        Flashcard(term: "Net debt", definition: "An issuer's total debt less cash and marketable securities. When the balance is positive it is referred to as net debt."),
                        Flashcard(term: "Operating efficiency ratios", definition: "Ratios that measure how efficiently a company performs day-to-day tasks, such as the collection of receivables and management of inventory."),
                        Flashcard(term: "Operating profit margin", definition: "A profitability ratio calculated as operating income (i.e., income before interest and taxes) divided by revenue. Also called operating margin."),
                        Flashcard(term: "Pretax margin", definition: "A profitability ratio calculated as earnings before taxes divided by revenue."),
                        Flashcard(term: "Profitability ratios", definition: "Ratios that measure a company’s ability to generate profitable sales from its resources (assets)."),
                        Flashcard(term: "Return on assets (ROA)", definition: "A profitability ratio calculated as net income divided by average total assets; indicates a company’s net profit generated per dollar invested in total assets."),
                        Flashcard(term: "Return on equity (ROE)", definition: "A profitability ratio calculated as net income divided by average shareholders’ equity."),
                        Flashcard(term: "Return on invested capital (ROIC)", definition: "A measure of the profitability of a company relative to the amount of capital invested by the equityholders and debtholders."),
                        Flashcard(term: "Scenario analysis", definition: "A variation of the valuation process combining a base case with alternative outcomes, allowing the incorporation of more favorable or adverse scenarios in the valuation process."),
                        Flashcard(term: "Sensitivity analysis", definition: "A form of analysis used to determine the impact of a change in one or more key variables affecting investment returns or valuation."),
                        Flashcard(term: "Simulation", definition: "A technique for exploring how a target variable (e.g. portfolio returns) would perform in a hypothetical environment specified by the user, rather than a historical setting."),
                        Flashcard(term: "Solvency", definition: "Refers to the condition in which firm value exceeds the face value of debt used to finance the firm’s assets."),
                        Flashcard(term: "Solvency ratios", definition: "Ratios that measure a company’s ability to meet its long-term obligations.")
                    ]
                )
            ]
        ),
        TopicArea(
            name: "Corporate Issuers",
            weight: "6-9%",
            modules: []
        ),
        TopicArea(
            name: "Equity Investments",
            weight: "11-14%",
            modules: []
        ),
        TopicArea(
            name: "Fixed Income",
            weight: "11-14%",
            modules: []
        ),
        TopicArea(
            name: "Derivatives",
            weight: "5–8%",
            modules: []
        ),
        TopicArea(
            name: "Alternative Investments",
            weight: "7-10%",
            modules: [
                StudyModule(
                    name: "Module 1: Alternative Investment Features, Methods, and Structures",
                    cards: [
                        Flashcard(term: "Accredited investors", definition: "Investors that meet certain minimum regulatory net worth or other requirements in order to invest in certain types of alternative assets."),
                        Flashcard(term: "Carried interest", definition: "A performance fee (also referred to as an incentive fee, or carry) that is applied based on excess returns above a hurdle rate."),
                        Flashcard(term: "Catch-up clause", definition: "A clause in an agreement that favors the GP. For a GP who earns a 20% performance fee, a catch-up clause allows the GP to receive 100% of the distributions above the hurdle rate until she receives 20% of the profits generated, and then every excess dollar is split 80/20 between the LPs and GP."),
                        Flashcard(term: "Clawback", definition: "A requirement that the general partner return any funds distributed as incentive fees until the limited partners have received their initial investment and a percentage of the total profit."),
                        Flashcard(term: "Co-investing", definition: "In co-investing, the investor invests in assets indirectly through the fund but also possesses rights (known as co-investment rights) to invest directly in the same assets. Through co-investing, an investor is able to make an investment alongside a fund when the fund identifies deals."),
                        Flashcard(term: "Committed capital", definition: "The amount that the limited partners have agreed to provide to the private equity fund."),
                        Flashcard(term: "Commodities", definition: "A product or service from a firm that is indistinguishable from products or services of competing firms, usually conforming to a common standard or grade imposed by convention or regulation."),
                        Flashcard(term: "Concession agreement", definition: "A contractual arrangement under which an entity (also known as a grantor) establishes terms and conditions with a developer or operator (referred to as a concessionaire) to plan, build, operate, finance, and maintain an infrastructure asset for a specific period."),
                        Flashcard(term: "Digital assets", definition: "The umbrella term covering assets that can be created, stored, and transmitted electronically and have associated ownership or use rights. Digital assets include a variety of assets, such as cryptocurrencies, tokens (security and utility), and digital collectables."),
                        Flashcard(term: "Direct investing", definition: "Occurs when an investor makes a direct investment in an asset without the use of an intermediary."),
                        Flashcard(term: "Fund investing", definition: "In fund investing, the investor invests in assets indirectly by contributing capital to a fund as part of a group of investors. Fund investing is available for all major alternative investment types."),
                        Flashcard(term: "Fund of funds", definition: "Funds that hold a portfolio of hedge funds; also called funds of hedge funds."),
                        Flashcard(term: "Hard hurdle rate", definition: "Hurdle rate where the manager earns fees on annual returns in excess of the hurdle rate"),
                        Flashcard(term: "Hedge funds", definition: "Private investment vehicles that may invest in public equities or publicly traded fixed-income assets, private capital, and/or real assets, but they are distinguished by their investment approach rather than by the investments themselves."),
                        Flashcard(term: "High-water mark", definition: "The highest value, net of fees, that a fund has reached in history. It reflects the highest cumulative return used to calculate an incentive fee."),
                        Flashcard(term: "Hurdle rate", definition: "Also called “preferred return.” The minimum rate of return on investment that a fund must reach before a GP receives carried interest."),
                        Flashcard(term: "Infrastructure", definition: "A type of real asset that is intended for public use and provides essential services. These assets are typically long-lived fixed assets, such as bridges and toll roads."),
                        Flashcard(term: "Limited partnership agreement (LPA)", definition: "A legal document that outlines the rules of the partnership and establishes the framework that ultimately guides the fund’s operations throughout its life."),
                        Flashcard(term: "Master limited partnership (MLP)", definition: "Has similar features to limited partnerships but is usually a more liquid investment that is often publicly traded."),
                        Flashcard(term: "Natural resources", definition: "These include commodities (hard and soft), agricultural land (farmland), and timberland."),
                        Flashcard(term: "Performance fee", definition: "Fee paid to the general partner from the limited partner(s) based on realized net profits."),
                        Flashcard(term: "Private capital", definition: "Funding provided to companies that is not sourced from the public markets."),
                        Flashcard(term: "Private debt", definition: "Capital extended to companies through a loan or other form of debt."),
                        Flashcard(term: "Private equity", definition: "Equity investment capital raised from sources other than public markets and traditional institutions."),
                        Flashcard(term: "Public–private partnership (PPP)", definition: "An agreement between the public sector and the private sector to finance, build, and operate public infrastructure, such as hospitals and toll roads."),
                        Flashcard(term: "Real assets", definition: "Generally, these are tangible physical assets, such as real estate, infrastructure, and natural resources, but they also include such intangibles as patents, intellectual property, and goodwill. Real assets generate current or expected future cash flows and/or are considered a store of value."),
                        Flashcard(term: "Real estate", definition: "Includes borrowed or ownership capital in buildings or land. Developed land includes commercial and industrial real estate, residential real estate, and infrastructure."),
                        Flashcard(term: "Side letter", definition: "A side agreement created between the GP and specific LPs. These agreements exist outside the LPA. These agreements provide additional terms and conditions related to the investment agreement."),
                        Flashcard(term: "Soft hurdle rate", definition: "Hurdle rate where the fee is calculated on the entire return when the hurdle is exceeded. With a soft hurdle, GPs are able to catch up performance fees once the hurdle threshold is exceeded."),
                        Flashcard(term: "Venture capital", definition: "Private equity investment in a startup or early-stage company involving high risk and a high rate of failure.")
                    ]
                )
            ]
        ),
        TopicArea(
            name: "Portfolio Management",
            weight: "8-12%",
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
