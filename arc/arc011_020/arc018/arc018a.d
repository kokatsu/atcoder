import std;

void main() {
    real Height, BMI;
    readfln("%f %f", Height, BMI);

    Height /= 100.0;

    real res = BMI * Height * Height;
    writefln("%.20f", res);
}
