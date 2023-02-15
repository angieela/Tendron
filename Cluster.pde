public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {
        double angle = (Math.random()*6.28);
         Tendril Bob = new Tendril(7);
         Bob.show();
    }
}
