import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto c = readln.chomp.split.to!(int[]);

    ulong res;
    int[int] candies;
    foreach (i; 0 .. N) {
        ++candies[c[i]];

        if (i < K - 1) {
            continue;
        }

        res = max(res, candies.length);

        --candies[c[i-K+1]];
        if (candies[c[i-K+1]] == 0) {
            candies.remove(c[i-K+1]);
        }
    }

    res.writeln;
}