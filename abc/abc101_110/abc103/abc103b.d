import std;

void main() {
    auto S = readln.chomp.to!(dchar[]);
    auto T = readln.chomp.to!(dchar[]);

    auto len = S.length;
    bool isOK;
    foreach (_; 0 .. len) {
        isOK |= (S == T);

        auto b = S.back;
        S = b ~ S[0 .. $ - 1];
    }

    writeln(isOK ? "Yes" : "No");
}
