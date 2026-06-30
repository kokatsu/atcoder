import std;

void main() {
    int T;
    readfln("%d", T);

    long[] R = new long[](T);
    foreach (ref r; R) {
        int N;
        readfln("%d", N);

        string S;
        readfln("%s", S);

        long[] X = readln.chomp.split.to!(long[]);
        long[] Y = readln.chomp.split.to!(long[]);

        long[][] dp = new long[][](N, 2);
        if (S[0] == 'S') {
            dp[0][0] = 0;
            dp[0][1] = -X[0];
        }
        else {
            dp[0][0] = -X[0];
            dp[0][1] = 0;
        }

        foreach (i; 1 .. N) {
            int j = i - 1;
            if (S[i] == 'S') {
                dp[i][0] = max(dp[j][0], dp[j][1] + Y[j]);
                dp[i][1] = max(dp[j][0], dp[j][1]) - X[i];
            }
            else {
                dp[i][0] = max(dp[j][0], dp[j][1] + Y[j]) - X[i];
                dp[i][1] = max(dp[j][0], dp[j][1]);
            }
        }

        r = dp[N - 1].maxElement;
    }

    string res = format("%(%d\n%)", R);
    res.writeln;
}
