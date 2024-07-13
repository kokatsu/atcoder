import std;

void main() {
    string S;
    readf("%s\n", S);

    int num = 0;
    foreach (i; 0 .. 14) {
        num += i % 2 == 0 ? (S[i] - '0') * 3 : S[i] - '0';
    }

    string res = num % 10 == S[14] - '0' ? "Yes" : "No";
    res.writeln;
}