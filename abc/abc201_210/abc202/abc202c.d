import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);
    auto B = readln.chomp.split.to!(long[]);
    auto C = readln.chomp.split.to!(long[]);

    C[] -= 1;

    auto cnt = new long[](N+1);
    foreach (a; A) {
        ++cnt[a];
    }

    auto idx = new long[](N);
    foreach (c; C) {
        ++idx[c];
    }

    long res;
    foreach (i, b; B) {
        res += cnt[b] * idx[i];
    }

    res.writeln;
}