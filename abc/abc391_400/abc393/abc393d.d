import std;

void main() {
    long N;
    string S;
    readf("%d\n%s\n", N, S);

    long one = S.count('1');

    long res, num;
    foreach (s; S) {
        if (s == '1') {
            ++num;
        }
        else {
            res += min(num, one - num);
        }
    }

    res.writeln;
}
