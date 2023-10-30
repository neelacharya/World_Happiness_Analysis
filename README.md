\documentclass{article}
\usepackage{hyperref}

\begin{document}

\section*{World Happiness Report 2021 Analysis}

\subsection*{Overview}

The World Happiness Report 2021 is a comprehensive dataset that captures the happiness levels across different countries and the factors that might influence it. This project aims to explore the dataset, understand its structure, and answer pertinent research questions using statistical analyses.

\subsection*{Project Structure}

\begin{enumerate}
    \item \textbf{Dataset:} World Happiness Report 2021 (Source: \href{https://www.kaggle.com/datasets/ajaypalsinghlo/world-happiness-report-2021}{Kaggle})

    \item \textbf{Data Exploration:}
    
    \begin{itemize}
        \item \textbf{Variables Analyzed:}
        \begin{itemize}
            \item Ladder score (Happiness score)
            \item Logged GDP per capita
            \item Social support
            \item Healthy life expectancy
            \item Freedom to make life choices
            \item Generosity
            \item Perceptions of corruption
        \end{itemize}
        
        For each variable, the following analyses are conducted:
        \begin{itemize}
            \item Boxplot to observe distribution and outliers.
            \item Histogram to visualize frequency distribution.
            \item Descriptive statistics: mean, median, range, and quantiles.
            \item QQ plot to inspect normality.
        \end{itemize}
    \end{itemize}
    
    \item \textbf{Research Questions:}
    
    \begin{itemize}
        \item \textbf{a. Relationship between GDP per capita and Happiness Score}
        \begin{itemize}
            \item Conducted a Pearson correlation.
            \item Created a scatter plot with a linear regression line to visually inspect the relationship.
        \end{itemize}
        
        \item \textbf{b. Generosity levels in countries with high vs low perceptions of corruption}
        \begin{itemize}
            \item Divided countries based on median perceptions of corruption.
            \item Conducted a t-test to compare generosity scores.
        \end{itemize}
        
        \item \textbf{c. Predicting Happiness Score based on multiple factors}
        \begin{itemize}
            \item Utilized a multiple linear regression model with factors like GDP, social support, life expectancy, freedom, generosity, and perceptions of corruption.
            \item Checked assumptions through VIF (Variance Inflation Factor) and QQ plots.
            \item Used stepwise regression for model optimization.
        \end{itemize}
    \end{itemize}
\end{enumerate}

\subsection*{Tools \& Libraries Used}

\begin{itemize}
    \item \textbf{R:} Primary tool for data analysis and visualization.
    \item \textbf{tidyverse:} For data manipulation and visualization.
    \item \textbf{car:} For statistical functions like variance inflation factor (VIF).
\end{itemize}

\subsection*{Files Included}

\begin{itemize}
    \item \textbf{R file:} Contains the complete code used for data analysis.
    \item \textbf{Excel file:} World Happiness Report 2021 dataset.
    \item \textbf{Google Doc:} Contains detailed analysis of variables and outlines research questions/hypotheses.
\end{itemize}

\subsection*{Sample Size Details}

Typically, the annual sample for each country consists of 1,000 people. If a country had surveys each year, the sample size would amount to 3,000. A sample size ranging from 2,000 to 3,000 provides a reasonably good estimate at the national level.

\subsection*{Key Insights \& Findings}

The README does not contain direct results, but by executing the provided R code, users can extract specific insights, correlations, and outcomes pertaining to the research questions.

\subsection*{Recommendation for Use}

\begin{enumerate}
    \item Ensure you have the necessary R packages installed (`tidyverse` and `car`).
    \item Make sure the dataset path is correctly specified.
    \item Run the code sequentially, starting with the data exploration, followed by research questions.
    \item Interpret results in the context of the World Happiness Report and the factors analyzed.
\end{enumerate}

\subsection*{Acknowledgements}

This analysis is based on the dataset provided by Ajaypal Singh (2021) on Kaggle.

\end{document}
