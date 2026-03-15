import std;

void main() {
    int n;
    readfln("%d", n);

    int l = n * (n + 1) / 2;
    bool[] isPrime = new bool[](l + 1);
    isPrime[] = true;
    isPrime[0] = isPrime[1] = false;
    foreach (i; 2 .. l + 1) {
        if (isPrime[i]) {
            foreach (j; iota(i * 2, l + 1, i)) {
                isPrime[j] = false;
            }
        }
    }

    string res = isPrime[l] ? "WANWAN" : "BOWWOW";
    res.writeln;
}
