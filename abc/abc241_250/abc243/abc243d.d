import std;

void main() {
    long N, X;
    readf("%d %d\n", N, X);

    auto S = readln.chomp;

    int idx = -1;
    auto list = new long[](N);
    foreach (s; S) {
        if (s == 'U') {
            if (idx >= 0 && list[idx]> 0) list[idx--] = 0;
            else ++idx;
        }
        else if (s == 'L') list[++idx] = 1;
        else list[++idx] = 2;
    }

    foreach (i; 0 .. idx+1) {
        if (list[i] == 0) X /= 2;
        else if (list[i] == 1) X *= 2;
        else X = X * 2 + 1;
    }

    X.writeln;
}