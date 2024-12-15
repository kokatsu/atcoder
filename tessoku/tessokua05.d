import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    int res;
    foreach (i; 1 .. N + 1) {
        int rem = K - i;
        if (rem < 2)
            break;
        if (rem > N * 2)
            continue;

        int t = clamp(rem - 1, 1, N);
        res += (t == N ? N * 2 - rem + 1 : t);
    }

    res.writeln;
}
