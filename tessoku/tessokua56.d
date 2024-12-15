import std;

void main() {
    int N, Q;
    string S;
    readf("%d %d\n%s\n", N, Q, S);

    auto rh = new RollingHash(S);

    foreach (_; 0 .. Q) {
        int a, b, c, d;
        readf("%d %d %d %d\n", a, b, c, d);

        writeln(rh.get(a - 1, b) == rh.get(c - 1, d) ? "Yes" : "No");
    }
}

struct RollingHash {
    this(string str) {
        auto len = str.length;
        hashed1.length = hashed2.length = len + 1;
        power1.length = power2.length = len + 1;
        power1[0] = power2[0] = 1;
        foreach (i, s; str) {
            power1[i + 1] = power1[i] * BASE1 % MOD1;
            power2[i + 1] = power2[i] * BASE2 % MOD2;
            hashed1[i + 1] = (hashed1[i] * BASE1 + s.to!ulong) % MOD1;
            hashed2[i + 1] = (hashed2[i] * BASE2 + s.to!ulong) % MOD2;
        }
    }

    Tuple!(T, T) get(T)(T l, T r) if (isIntegral!T) {
        ulong val1 = (hashed1[r] + MOD1 - (hashed1[l] * power1[r - l]) % MOD1) % MOD1;
        ulong val2 = (hashed2[r] + MOD2 - (hashed2[l] * power2[r - l]) % MOD2) % MOD2;
        return Tuple!(T, T)(val1.to!T, val2.to!T);
    }

private:
    const ulong BASE1 = 10 ^^ 3 + 9, BASE2 = 10 ^^ 3 + 7;
    const ulong MOD1 = 10 ^^ 9 + 7, MOD2 = 10 ^^ 9 + 9;
    ulong[] hashed1, hashed2, power1, power2;
}
