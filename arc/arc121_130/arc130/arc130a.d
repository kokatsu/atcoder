import std;

void main() {
    int N;
    readf("%d\n", N);

    string S = readln.chomp;

    long res, cnt;
    foreach (i; 1 .. N) {
        if (S[i] == S[i-1]) {
            ++cnt;
            res += cnt;
        }
        else {
            cnt = 0;
        }
    }

    res.writeln;
}