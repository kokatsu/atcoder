import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int M;
    readf("%d\n", M);

    auto B = readln.chomp.split.to!(int[]);

    int X;
    readf("%d\n", X);

    bool[int] used;
    foreach (b; B) used[b] = true;

    auto dp = new bool[](X+1);
    dp[0] = true;
    foreach (i; 0 .. X) {
        if (!dp[i]) continue;

        foreach (a; A) {
            int pos = i + a;
            if (pos > X || pos in used) continue;

            dp[pos] = true;
        }
    }

    writeln(dp[X] ? "Yes" : "No");
}