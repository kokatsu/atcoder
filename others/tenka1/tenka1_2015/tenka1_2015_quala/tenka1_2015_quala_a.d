import std;

void main() {
    int res;

    foreach (a; iota(1, 7).array.permutations) {
        bool isOK = true;
        int num;
        foreach (i; 0 .. 6) {
            num = num * 10 + a[i];
            isOK &= (i == 0 || a[i-1] + a[i] != 7);
        }

        if (isOK && res < num) res = num;
    }

    res.writeln;
}