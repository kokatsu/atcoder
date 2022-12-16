import std;

void main() {
    long N;
    readf("%d\n", N);

    long D = N / 4, R = N % 4;

    long M = D * 8 + R * 2;
    M.writeln;

    string x;
    if (R > 0) x ~= to!dchar(R+'0');
    x ~= "4".replicate(D).to!string;
    x.writeln;
}