import std;

void main() {
    int N;
    readf("%d\n", N);

    auto T = readln.chomp.split.to!(int[]);

    int M = T.sum;

    auto dp = new bool[](M+1);
    dp[0] = true;

    int L;
    foreach (t; T) {
        foreach_reverse (i; 0 .. L+1) {
            if (dp[i]) dp[i+t] = true;
        }

        L += t;
    }

    int f = (M + 1) / 2;
    foreach (i; f .. M+1) {
        if (dp[i]) {
            i.writeln;
            return;
        }
    }
}