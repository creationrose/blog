import java.util.ArrayList;

public class PerformerDataDisplay
{
    private ArrayList<Integer>performerData;
    private int[] ageCounts;
    private int twentyToTwentyNine;
    private int thirtyToThirtyNine;
    private int fourtyPlus;
    /**
     * Constructor for performers
     */
    public PerformerDataDisplay()
    {
        performerData = new PerformerData().getPerformerData();
        analyzeData();
    }

    /**
     * Analyze the number of performer data by filling in the array
     */
    private void analyzeData()
    {
        // Record the count for number of performers age 40+
        ageCounts = new int[40];    //Actually this gives count 0-40.  I want to start from 20. Possibe?
        twentyToTwentyNine = 0;
        thirtyToThirtyNine = 0;
        fourtyPlus = 0;


        for (Integer numPerformers : performerData) {
            if (numPerformers > 0) {
                twentyToTwentyNine++;
                thirtyToThirtyNine++;
                fourtyPlus++;
            }
            else {
                ageCounts[numPerformers]++;
            }
        }
    }

    /**
     * Display data for the number of performers
     */
    public void displayData()
    {
        System.out.println("------------------ Number of Performers --------------------");
        System.out.println("Counts show number of adults in each age bracket");
        for (int numPerformers = 0; numPerformers < ageCounts.length; numPerformers++) {
            System.out.println(numPerformers + "  : " + ageCounts[numPerformers]);
        }
        System.out.println("20-29 : " + twentyToTwentyNine);
        System.out.println("30-39 : " + thirtyToThirtyNine);
        System.out.println("40+ : " + fourtyPlus);
        System.out.println("---------------------------------------------------------------");
    }
}


//  -------------------------------------------------------
// Next Class


import java.util.ArrayList;


public class PerformerData
{
    private ArrayList<Integer> numPerformerData;


    public PerformerData()
    {
        numPerformerData = new ArrayList<>();
        populateData();
    }

    public ArrayList<Integer> getPerformerData()
    {
        return numPerformerData;
    }

    private void populateData()
    {
        numPerformerData.add(8);
        numPerformerData.add(5);
        numPerformerData.add(9);
        numPerformerData.add(1);
        numPerformerData.add(0);
        numPerformerData.add(3);
        numPerformerData.add(7);
        numPerformerData.add(0);
        numPerformerData.add(1);
        numPerformerData.add(6);
        numPerformerData.add(2);
        numPerformerData.add(4);
        numPerformerData.add(6);
        numPerformerData.add(2);
    }
}



