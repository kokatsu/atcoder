import std;

struct S {
    int num, cnt;
}

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(int[]);

    int[] C = [0, 2, 5, 5, 4, 5, 6, 3, 7, 6];

    auto dp = new string[](N + 1);
    dp[1 .. $] = "0";
    foreach (i; 0 .. N) {
        if (dp[i] == "0")
            continue;

        foreach (a; A) {
            int j = i + C[a];
            if (j > N)
                continue;

            string str = dp[i] ~ a.to!string;
            if (dp[j].length == str.length)
                dp[j] = max(dp[j], str);
            else
                dp[j] = (dp[j].length > str.length ? dp[j] : str);
        }
    }

    string res = dp[N];
    res.writeln;
}
