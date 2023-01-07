import std;

void main() {
    int N;
    readf("%d\n", N);

    auto T = readln.chomp.to!(dchar[]);

    auto L = T[0..N].dup, R = T[N..$].dup;
    R.reverse;

    auto X = L ~ R, Y = R ~ L;
    int[] zx = zAlgorithm(X), zy = zAlgorithm(Y);
    zx ~= 0, zy ~= 0;

    foreach (i; 0 .. N+1) {
        if (zx[N*2-i] < i) continue;
        if (zy[N+i] < N - i) continue;

        writeln(T[0..i], T[N+i..$]);
        i.writeln;
        return;
    }

    writeln(-1);
}

/// Z algorithm
int[] zAlgorithm(T)(T x)
if (isArray!T) {
    int len = x.length.to!int, j;

    auto z = new int[](len);
    foreach (i; 1 .. len) {
        z[i] = (i - j < z[j] ? min(j+z[j]-i, z[i-j]) : 0);

        while (i + z[i] < len && x[z[i]] == x[i+z[i]]) {
            ++z[i];
        }

        if (j + z[j] < i + z[i]) j = i;
    }

    z[0] = len;

    return z;
}