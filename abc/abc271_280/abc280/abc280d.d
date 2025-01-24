import std;

void main() {
    long K;
    readf("%d\n", K);

    long S = K.to!real
        .sqrt
        .floor
        .to!long;

    long res;
    foreach (i; 2 .. S + 1) {
        long C;
        while (K % i == 0) {
            K /= i;
            ++C;
        }

        long F;
        while (C > 0) {
            F += i;
            long G = F;
            while (G % i == 0) {
                G /= i;
                --C;
            }
        }

        res = max(res, F);
    }

    res = max(res, K);

    res.writeln;
}
