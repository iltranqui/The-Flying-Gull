within ;
model The_Flying_Gull

  inner Modelica.Mechanics.MultiBody.World world(
    gravityType=Modelica.Mechanics.MultiBody.Types.GravityTypes.UniformGravity,
    g=Modelica.Constants.g_n,
    n={0,1,0})
    annotation (Placement(transformation(extent={{-162,2},{-142,22}})));

  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(n(displayUnit="1") =
      {0,-1,0}, v(fixed=true, start=0.2))
    annotation (Placement(transformation(extent={{-106,-4},{-80,22}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r={0.3,
        1.5,-1/3 - 0.04}, color={210,105,30})
    annotation (Placement(transformation(extent={{-92,120},{-50,162}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r={0.3,
        1.5,1/3 + 0.04}, color={210,105,30})
    annotation (Placement(transformation(extent={{-108,-138},{-60,-90}})));
  Modelica.Mechanics.MultiBody.Joints.SphericalSpherical sphericalSpherical(rodLength=
       1.5, rodColor={255,128,0})
             annotation (Placement(transformation(extent={{-22,128},{8,158}})));
  Modelica.Mechanics.MultiBody.Joints.SphericalSpherical sphericalSpherical1(
      rodLength=1.5, rodColor={255,128,0})
    annotation (Placement(transformation(extent={{-22,-124},{-2,-104}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r={0,0,
        1/3}, color={0,128,0})
    annotation (Placement(transformation(extent={{68,124},{100,156}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox Wing_left(
    r={0,0,-1},
    width=0.12,
    height=0.005,
    density=1000*(1000e-03/1e6)) annotation (Placement(transformation(
        extent={{-17,-17},{17,17}},
        rotation=180,
        origin={93,33})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox Wing_right(
    r={0,0,1},
    width=0.12,
    height=0.005,
    density=1000*(1000e-3/1e6)) annotation (Placement(transformation(
        extent={{-17,-17},{17,17}},
        rotation=180,
        origin={93,-3})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder Gull_body(
    r={0.6,0,0},
    length=1,
    diameter=0.08,
    density=1000*(200e3/1e6))
    annotation (Placement(transformation(extent={{-18,-2},{14,30}})));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute(n={0,1,0})
    annotation (Placement(transformation(extent={{52,80},{76,104}})));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(n={0,1,0})
    annotation (Placement(transformation(extent={{48,-60},{72,-36}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation5(r={0,0,
        -1/3}, color={210,105,30})
    annotation (Placement(transformation(extent={{50,-138},{94,-94}})));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(r={0.3,0,0.04},
    rotationType=Modelica.Mechanics.MultiBody.Types.RotationTypes.PlanarRotationSequence,

    angles={90,0,90})
    annotation (Placement(transformation(extent={{-32,-64},{0,-32}})));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation1(r={0.3,0,-0.04},
    rotationType=Modelica.Mechanics.MultiBody.Types.RotationTypes.PlanarRotationSequence,

    angles={-90,0,90})
    annotation (Placement(transformation(extent={{-30,74},{4,108}})));
  Modelica.Mechanics.MultiBody.Parts.Fixed fixed(r={0.3,0,-0.5}) annotation (
      Placement(transformation(
        extent={{-13,-13},{13,13}},
        rotation=180,
        origin={253,91})));
  Modelica.Mechanics.MultiBody.Parts.Fixed fixed1(r={0.3,0,0.5}) annotation (
      Placement(transformation(
        extent={{-13,-13},{13,13}},
        rotation=180,
        origin={243,-49})));
  Modelica.Mechanics.MultiBody.Forces.Spring spring(c=50, s_unstretched=0.1)
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={160,-48})));
  Modelica.Mechanics.MultiBody.Forces.Spring spring1(c=50, s_unstretched=0.1)
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={156,92})));
equation
  connect(world.frame_b, prismatic.frame_a) annotation (Line(
      points={{-142,12},{-122,12},{-122,9},{-106,9}},
      color={95,95,95},
      thickness=0.5));
  connect(fixedTranslation.frame_a, prismatic.frame_a) annotation (Line(
      points={{-92,141},{-106,141},{-106,9}},
      color={95,95,95},
      thickness=0.5));
  connect(fixedTranslation1.frame_a, prismatic.frame_a) annotation (Line(
      points={{-108,-114},{-114,-114},{-114,9},{-106,9}},
      color={95,95,95},
      thickness=0.5));
  connect(fixedTranslation1.frame_b, sphericalSpherical1.frame_a) annotation (
      Line(
      points={{-60,-114},{-22,-114}},
      color={95,95,95},
      thickness=0.5));
  connect(sphericalSpherical1.frame_b, fixedTranslation5.frame_a) annotation (
      Line(
      points={{-2,-114},{46,-114},{46,-116},{50,-116}},
      color={95,95,95},
      thickness=0.5));
  connect(fixedTranslation5.frame_b, revolute1.frame_b) annotation (Line(
      points={{94,-116},{100,-116},{100,-48},{72,-48}},
      color={95,95,95},
      thickness=0.5));
  connect(Gull_body.frame_a, prismatic.frame_b) annotation (Line(
      points={{-18,14},{-50,14},{-50,9},{-80,9}},
      color={95,95,95},
      thickness=0.5));
  connect(fixedRotation.frame_a, prismatic.frame_b) annotation (Line(
      points={{-32,-48},{-62,-48},{-62,9},{-80,9}},
      color={95,95,95},
      thickness=0.5));
  connect(fixedRotation1.frame_a, prismatic.frame_b) annotation (Line(
      points={{-30,91},{-30,92},{-62,92},{-62,9},{-80,9}},
      color={95,95,95},
      thickness=0.5));
  connect(fixedRotation.frame_b, revolute1.frame_a) annotation (Line(
      points={{-8.88178e-16,-48},{48,-48}},
      color={95,95,95},
      thickness=0.5));
  connect(fixedRotation1.frame_b, revolute.frame_a) annotation (Line(
      points={{4,91},{4,92},{52,92}},
      color={95,95,95},
      thickness=0.5));
  connect(fixedTranslation.frame_b, sphericalSpherical.frame_a) annotation (
      Line(
      points={{-50,141},{-38,141},{-38,143},{-22,143}},
      color={95,95,95},
      thickness=0.5));
  connect(sphericalSpherical.frame_b, fixedTranslation2.frame_a) annotation (
      Line(
      points={{8,143},{8,138},{60,138},{60,140},{68,140}},
      color={95,95,95},
      thickness=0.5));
  connect(fixedTranslation2.frame_b, revolute.frame_b) annotation (Line(
      points={{100,140},{106,140},{106,92},{76,92}},
      color={95,95,95},
      thickness=0.5));
  connect(Wing_right.frame_a, revolute1.frame_b) annotation (Line(
      points={{110,-3},{116,-3},{116,-48},{72,-48}},
      color={95,95,95},
      thickness=0.5));
  connect(Wing_left.frame_a, revolute.frame_b) annotation (Line(
      points={{110,33},{110,32},{116,32},{116,92},{76,92}},
      color={95,95,95},
      thickness=0.5));
  connect(spring.frame_a, fixed1.frame_b) annotation (Line(
      points={{170,-48},{200,-48},{200,-49},{230,-49}},
      color={95,95,95},
      thickness=0.5));
  connect(spring1.frame_a, fixed.frame_b) annotation (Line(
      points={{166,92},{166,91},{240,91}},
      color={95,95,95},
      thickness=0.5));
  connect(spring.frame_b, sphericalSpherical1.frame_b) annotation (Line(
      points={{150,-48},{132,-48},{132,-142},{22,-142},{22,-114},{-2,-114}},
      color={95,95,95},
      thickness=0.5));
  connect(spring1.frame_b, sphericalSpherical.frame_b) annotation (Line(
      points={{146,92},{130,92},{130,162},{26,162},{26,138},{8,138},{8,143}},
      color={95,95,95},
      thickness=0.5));
  annotation (
    uses(Modelica(version="4.0.0")),
    Diagram(coordinateSystem(extent={{-160,-140},{160,160}})),
    Icon(coordinateSystem(extent={{-160,-140},{160,160}})));
end The_Flying_Gull;
