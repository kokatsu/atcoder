import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    bool checkAverage(real x) {
        auto B = new real[](N);
        foreach (i; 0 .. N) B[i] = A[i] - x;

        auto dp = new real[][](N+1, 2);
        dp[0][] = 0.0;
        foreach (i, b; B) {
            dp[i+1][0] = dp[i].maxElement + b;
            dp[i+1][1] = dp[i][0];
        }

        return dp[N].maxElement >= 0.0;
    }

    bool checkMedian(long x) {
        auto B = new long[](N);
        foreach (i; 0 .. N) B[i] = A[i] >= x ? 1 : -1;

        auto dp = new long[][](N+1, 2);
        foreach (i, b; B) {
            dp[i+1][0] = dp[i].maxElement + b;
            dp[i+1][1] = dp[i][0];
        }

        return dp[N].maxElement > 0;
    }

    long mn = A.minElement, mx = A.maxElement;

    real aveOk = mn.to!real, aveNg = mx.to!real + 1;
    foreach (i; 0 .. 100) {
        real mid = (aveOk + aveNg) / 2;
        (checkAverage(mid) ? aveOk : aveNg) = mid;
    }

    writefln("%.10f", aveOk);

    long mdnOk = mn, mdnNg = mx + 1;
    while (mdnNg - mdnOk > 1) {
        long mid = (mdnOk + mdnNg) / 2;
        (checkMedian(mid) ? mdnOk : mdnNg) = mid;
    }

    mdnOk.writeln;
}