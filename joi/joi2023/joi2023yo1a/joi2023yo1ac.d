import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    int res, pos = 1;
    foreach (s; S) {
        if (s == 'L') {
            pos = max(1, pos-1);
        }
        else {
            pos = min(3, pos+1);
            if (pos == 3) ++res;
        }
    }

    res.writeln;
}