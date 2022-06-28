import std;

void main() {
    ulong N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    ulong M = 10 ^^ 9 + 7;

    A.sort;

    auto G = A.group;
    bool isOK = true;
    int num = (N % 2 == 0 ? 1 : 0);
    foreach (g; G) {
        isOK &= (g[0] == num);
        isOK &= (g[1] == (num == 0 ? 1 : 2));

        num += 2;
    }

    ulong res;
    if (isOK) res = powmod(2uL, N/2, M);

    res.writeln;
}