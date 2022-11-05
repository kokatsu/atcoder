import std;

void main() {
    int N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(int[]);

    auto G = a.fold!((x, y) => gcd(x, y));

    bool isOK = true;
    int res;
    foreach (x; a) {
        int num = x / G;

        while (num > 1 && num % 2 == 0) {
            ++res;
            num /= 2;
        }

        while (num > 1 && num % 3 == 0) {
            ++res;
            num /= 3;
        }

        isOK &= (num == 1);
    }

    if(!isOK) res = -1;

    res.writeln;
}