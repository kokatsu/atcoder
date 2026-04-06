import std;

void main() {
    long A, B, K, L;
    readfln("%d %d %d %d", A, B, K, L);

    long D = K / L, R = K % L;

    long res = D * B + min(B, R * A);
    res.writeln;
}
